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

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:tau/tau.dart';
import 'dart:math';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';

/// This is a very simple example for τ beginners, that show how to playback a file.
/// Its a translation to Dart from [Mozilla example](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API/Using_Web_Audio_API)
/// This example is really basic.
class AudioBufferEx extends StatefulWidget {
  const AudioBufferEx({super.key});
  @override
  State<AudioBufferEx> createState() => _AudioBufferEx();
}

class _AudioBufferEx extends State<AudioBufferEx> {
  String pcmAsset =
    'assets/wav/sample2.aac'; // The Wav asset to be played

  AudioContext? audioCtx;
  AudioDestinationNode? dest;
  AudioBufferSourceNode? source;
  AudioBuffer? audioBuffer;
  final channels = 1;
  bool playDisabled = false;
  bool stopDisabled = true;
  var path = '';

  Future<void> loadAudio() async
  {
        var asset = await rootBundle.load(pcmAsset);

        var tempDir = await getTemporaryDirectory();
        path = '${tempDir.path}/tau.wav';
        var file = File(path);
        file.writeAsBytesSync(
            asset.buffer.asInt8List());

  }

  void initPlatformState() async {
    audioCtx = AudioContext(
      options: const AudioContextOptions(
      latencyHint: AudioContextLatencyCategory.playback(),
      sinkId: '',
      renderSizeHint: AudioContextRenderSizeCategory.default_,
      //sampleRate: 44100,
    ));
    await loadAudio();
    audioBuffer = await audioCtx!.decodeAudioDataSync(inputPath: path);
    setState(() {
    });

    Tau.tau.logger.d('Une bonne journée');
  }

  // Here is the JS code executed when click on the button
  /*
      // Create an empty two second stereo buffer at the
      // sample rate of the AudioContext
      const frameCount = audioCtx.sampleRate * 2.0;

      const buffer = new AudioBuffer({
        numberOfChannels: channels,
        length: frameCount,
        sampleRate: audioCtx.sampleRate,
      });

      // Fill the buffer with white noise;
      // just random values between -1.0 and 1.0
      for (let channel = 0; channel < channels; channel++) {
        // This gives us the actual array that contains the data
        const nowBuffering = buffer.getChannelData(channel);
        for (let i = 0; i < frameCount; i++) {
          // Math.random() is in [0; 1.0]
          // audio needs to be in [-1.0; 1.0]
          nowBuffering[i] = Math.random() * 2 - 1;
        }
      }

      // Get an AudioBufferSourceNode.
      // This is the AudioNode to use when we want to play an AudioBuffer
      const source = audioCtx.createBufferSource();
      // Set the buffer in the AudioBufferSourceNode
      source.buffer = buffer;
      // Connect the AudioBufferSourceNode to the
      // destination so we can hear the sound
      source.connect(audioCtx.destination);
      // start the source playing
      source.start();

      source.onended = () => {
        console.log("White noise finished.");
      };
 */
  // And here is our dart code
  Future<void> hitPlayButton() async {
      disposeEverything();

      source = await audioCtx!.createBufferSource();

      if ( audioBuffer!.isDisposed )
      {
          Tau.tau.logger.d('Is disposed');
      }
      await source!.setBuffer(audioBuffer: audioBuffer!);
      if ( audioBuffer!.isDisposed )
      {
        Tau.tau.logger.d('Is disposed');
      }

      dest = await audioCtx!.destination();
      await source!.connect(dest: dest!);
      await source!.setLoop(value: true) ;
      await source!.start();

      //source.loopStart = loopstartControl.value;
      //source.loopEnd = loopendControl.value;
      playDisabled = true;
      stopDisabled = false;


      /*
    var sampleRate = await audioCtx!.sampleRate();
    var frameCount = (sampleRate * 2.0).ceil();
    List<Float32List> buf = List<Float32List>.filled(
        channels,
        Float32List(
          frameCount,
        ));
    List<Float32List>.filled(channels, Float32List(frameCount));
    src = await audioCtx!.createBufferSource();
    for (int channel = 0; channel < channels; ++channel) {
      Float32List nowBuffering = Float32List(frameCount);
      for (int i = 0; i < frameCount; ++i) {
        double rng = (Random().nextDouble() * 2) - 1;
        nowBuffering[i] = rng;
      }
      buf[channel] = nowBuffering;
    }
    AudioBuffer audioBuffer =
        await AudioBuffer.from(samples: buf, sampleRate: 48000);


    src = await audioCtx!.createBufferSource();
    src!.setBuffer(audioBuffer: audioBuffer);

    dest = await audioCtx!.destination();
    src!.connect(dest: dest!);
    await src!.setOnEnded(callback: finished);
    src!.start();
     */
    if (mounted) {
      setState(() {});
    }
  }

  Future<void> hitStopButton() async
  {
    source!.stop();
    disposeEverything();
    playDisabled = false;
    stopDisabled = true;
    if (mounted) {
      setState(() {});
    }

  }


  // Good citizens must dispose nodes and Audio Context
  void disposeEverything() {
    Tau.tau.logger.d("dispose");

    if (dest != null) {
      dest!.dispose();
      dest = null;
    }
    //if (source != null) {
      //src!.stop();
      //source!.dispose();
      //source = null;
    //}
  }

  @override
  void dispose() {
    disposeEverything();
    if (audioCtx != null) {
      audioCtx!.close();
      audioCtx!.dispose();
      audioCtx = null;
      if (source != null) {
        //source!.stop();
        source!.dispose();
        source = null;
      }
      if (audioBuffer != null)
      {
        audioBuffer!.dispose();
        audioBuffer = null;
      }

    }

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    Widget makeBody() {
      return Center( child:
        Column( mainAxisAlignment: MainAxisAlignment.center, children: [
           Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
          onPressed: playDisabled ? null : hitPlayButton,
          //color: Colors.indigo,
          child: const Text(
            'Play',
            style: TextStyle(color: Colors.black),
          ),
        ),

        const SizedBox(
          width: 5,
        ),

        ElevatedButton(
          onPressed: stopDisabled ? null : hitStopButton,
          //color: Colors.indigo,
          child: const Text(
            'Stop',
            style: TextStyle(color: Colors.black),
          ),
        ),

        const SizedBox(
          width: 5,
        ),

      ]),

        ]),
      );
    }

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Mozilla Audio Buffer'),
        actions: const <Widget>[],
      ),
      body: makeBody(),
    );
  }
}
