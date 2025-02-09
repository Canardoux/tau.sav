/*
 * Copyright 2024 Canardoux.
 *
 * This file is part of the τ Project.
 *
 * τ (Tau) is free software: you can redistribute it and/or modify
 * it under the terms of the Mozilla Public License version 2 (MPL2.0),
 * as published by the Mozilla organization.
 *
 * τ is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * MPL General Public License for more details.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

/// ------------------------------------------------------------------
/// # The Flutter Sound library
///
/// Flutter Sound is composed with four main modules/classes
/// - [FlutterSound]. This is the main Flutter Sound module.
/// - [FlutterSoundPlayer]. Everything about the playback functions
/// - [FlutterSoundRecorder]. Everything about the recording functions
/// - [FlutterSoundHelper]. Some utilities to manage audio data.
/// And two modules for the Widget UI
/// - [SoundPlayerUI]
/// - [SoundRecorderUI]
/// ------------------------------------------------------------------
//library tau;

/// everything : no documentation
/// @nodoc
library everything;

import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';

import 'package:logger/logger.dart' as lg;
import 'package:tau/public/rust/frb_generated.dart';
import 'package:tau/public/rust/api/simple.dart';
//import 'tau_bindings_generated.dart';

//export 'package:tau/public/rust/frb_generated.dart';
//export 'logger.dart' ;

import 'tau_bindings_generated.dart';
//import 'package:tau_plugin/tau_plugin.dart';

//export 'public/webaudio.dart';
export 'package:tau/public/rust/api/simple.dart';
//export 'package:logger/logger.dart'; // For call to setLogLevel()
export 'package:tau/public/rust/api/toto.dart';
export 'package:tau/public/rust/third_party/web_audio_api.dart';

export 'package:tau/public/rust/frb_generated.dart';
export 'package:tau/public/rust/third_party/web_audio_api/context.dart';
export 'package:tau/public/rust/third_party/web_audio_api/media_devices.dart';
export 'package:tau/public/rust/third_party/web_audio_api/media_recorder.dart';
export 'package:tau/public/rust/third_party/web_audio_api/media_streams.dart';
//export 'package:tau/public/rust/third_party/web_audio_api/media_element.dart';
export 'package:tau/public/rust/third_party/web_audio_api/node.dart';
export 'package:tau/public/rust/third_party/web_audio_api/worklet.dart';
export 'package:tau/public/rust/api/override_web_audio_api.dart';
export 'package:tau/public/rust/api/media_element.dart';
//export 'package:tau/public/rust/third_party/iir'

//==================================  Tau  ======================================

/// This is the Main class for the τ Plugin.
/// Tau() or [tau] is a Singleton.
/// The module is automatically inited, thanks to the static variable [tau].
class Tau {
  /// Tau() and [tau] are synonymous.
  static final Tau tau = Tau._internal();

  /// Tau() is a singleton
  factory Tau() {
    return tau;
  }

  Tau._internal() {
    //init(lev: lg.Level.trace);
  }

  /// Enums are transmitted with Int between Tau and TauCore
  /// [iToLevel] translates Rust Level to Dart Level
  final iToLevel = [
    lg.Level.error,
    lg.Level.warning,
    lg.Level.info,
    lg.Level.debug,
    lg.Level.trace
  ];

  /// The stream for receiving logs from the TauCore module.
  Future<void> _setup() async {
    traceLogger().listen((event) {
      logger.log(
        iToLevel[event.logLevel.index],
        "[${event.lbl}] ${event.msg}",
        time: DateTime.fromMillisecondsSinceEpoch(event.timeMillis),
      );
    });
  }

  /// Initialisation of the full plugin after a clean startup
  /// - [level] is the log level for the plugin. It is optional.
  /// This function is automatically called by the Tau singleton with a default og level of logger.Level.trace.
  /// Call `setLogLevel()` if another log level is wanted
  /// Probably never called by the App
  Future<void> init({lg.Level lev = lg.Level.trace}) async {
    await RustLib.init(); // Initialisation of the Flutter-Rust-Bridge
    initTauCore(); // Initialisation of the TauCore module
    setLogLevel(lev); // Initialisation of the Logger
    await _setup(); // Creation of the Stream to receive Logs from TauCore.
    //String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    //platformVersion = await TauPlugin.tauPlugin.getPlatformVersion() ??
    //'Unknown platform version';

    //logger.t('Running on: $platformVersion\n');
  }

  /// The Tau Logger and the current Log level.
  /// They are private static variable
  lg.Logger _logger = lg.Logger(level: lg.Level.trace);
  lg.Level _logLevel = lg.Level.debug;

  /// The FlutterSoundPlayerLogger Logger and logLevel getters
  /// Getter (read only)
  lg.Logger get logger => _logger;
  lg.Level get logLevel => _logLevel;

  /// Used if the App wants to dynamically change the Log Level.
  /// - [aLevel] is the new log level wanted
  void setLogLevel(lg.Level aLevel) async {
    _logLevel = aLevel;
    _logger = lg.Logger(level: aLevel);
    rustSetLogLevel(level: aLevel.index);
  }
}

/// Name of the module
const String _libName = 'tau';

// ----------------- (FFI)  ------------------------------

/// A very short-lived native function.
///
/// For very short-lived functions, it is fine to call them on the main isolate.
/// They will block the Dart execution while running the native function, so
/// only do this for native functions which are guaranteed to be short-lived.
int sum(int a, int b) => _bindings.sum(a, b);

/// A longer lived native function, which occupies the thread calling it.
///
/// Do not call these kind of native functions in the main isolate. They will
/// block Dart execution. This will cause dropped frames in Flutter applications.
/// Instead, call these native functions on a separate isolate.
///
/// Modify this to suit your own use case. Example use cases:
///
/// 1. Reuse a single isolate for various different kinds of requests.
/// 2. Use multiple helper isolates for parallel execution.
Future<int> sumAsync(int a, int b) async {
  final SendPort helperIsolateSendPort = await _helperIsolateSendPort;
  final int requestId = _nextSumRequestId++;
  final _SumRequest request = _SumRequest(requestId, a, b);
  final Completer<int> completer = Completer<int>();
  _sumRequests[requestId] = completer;
  helperIsolateSendPort.send(request);
  return completer.future;
}

// ==========================  FFI  ==============================

/// The dynamic library in which the symbols for [TauBindings] can be found.
final DynamicLibrary _dylib = () {
  if (Platform.isMacOS || Platform.isIOS) {
    return DynamicLibrary.open('$_libName.framework/$_libName');
  }
  if (Platform.isAndroid || Platform.isLinux) {
    return DynamicLibrary.open('lib$_libName.so');
  }
  if (Platform.isWindows) {
    return DynamicLibrary.open('$_libName.dll');
  }
  throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
}();

/// The bindings to the native functions in [_dylib].
final tauBindings _bindings = tauBindings(_dylib);

/// A request to compute `sum`.
///
/// Typically sent from one isolate to another.
class _SumRequest {
  final int id;
  final int a;
  final int b;

  const _SumRequest(this.id, this.a, this.b);
}

/// A response with the result of `sum`.
///
/// Typically sent from one isolate to another.
class _SumResponse {
  final int id;
  final int result;

  const _SumResponse(this.id, this.result);
}

/// Counter to identify [_SumRequest]s and [_SumResponse]s.
int _nextSumRequestId = 0;

/// Mapping from [_SumRequest] `id`s to the completers corresponding to the correct future of the pending request.
final Map<int, Completer<int>> _sumRequests = <int, Completer<int>>{};

/// The SendPort belonging to the helper isolate.
Future<SendPort> _helperIsolateSendPort = () async {
  // The helper isolate is going to send us back a SendPort, which we want to
  // wait for.
  final Completer<SendPort> completer = Completer<SendPort>();

  // Receive port on the main isolate to receive messages from the helper.
  // We receive two types of messages:
  // 1. A port to send messages on.
  // 2. Responses to requests we sent.
  final ReceivePort receivePort = ReceivePort()
    ..listen((dynamic data) {
      if (data is SendPort) {
        // The helper isolate sent us the port on which we can sent it requests.
        completer.complete(data);
        return;
      }
      if (data is _SumResponse) {
        // The helper isolate sent us a response to a request we sent.
        final Completer<int> completer = _sumRequests[data.id]!;
        _sumRequests.remove(data.id);
        completer.complete(data.result);
        return;
      }
      throw UnsupportedError('Unsupported message type: ${data.runtimeType}');
    });

  // Start the helper isolate.
  await Isolate.spawn((SendPort sendPort) async {
    final ReceivePort helperReceivePort = ReceivePort()
      ..listen((dynamic data) {
        // On the helper isolate listen to requests and respond to them.
        if (data is _SumRequest) {
          final int result = _bindings.sum_long_running(data.a, data.b);
          final _SumResponse response = _SumResponse(data.id, result);
          sendPort.send(response);
          return;
        }
        throw UnsupportedError('Unsupported message type: ${data.runtimeType}');
      });

    // Send the port to the main isolate on which we can receive requests.
    sendPort.send(helperReceivePort.sendPort);
  }, receivePort.sendPort);

  // Wait until the helper isolate has sent us back the SendPort on which we
  // can start sending requests.
  return completer.future;
}();
