// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'node.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored because they have generic arguments: `new`, `process`
// These types are ignored because they are not used by any `pub` functions: `AudioParamValues`, `AudioWorkletNodeOptions`, `AudioWorkletRenderer`, `Processor`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`, `fmt`, `fmt`, `has_side_effects`, `onmessage`, `process`
// These functions are ignored (category: IgnoreBecauseExplicitAttribute): `constructor`, `onmessage`, `port`
// These functions are ignored (category: IgnoreBecauseOwnerTyShouldIgnore): `default`

// Rust type: RustOpaqueMoi<flutter_rust_bridge::for_generated::RustAutoOpaqueInner<AudioWorkletNode>>
abstract class AudioWorkletNode implements RustOpaqueInterface, AudioNode {
  void channelConfig();

  /// Represents an integer used to determine how many channels are used when up-mixing and
  /// down-mixing connections to any inputs to the node.
  int channelCount();

  /// Represents an enumerated value describing the way channels must be matched between the
  /// node's inputs and outputs.
  ChannelCountMode channelCountMode();

  /// Represents an enumerated value describing the meaning of the channels. This interpretation
  /// will define how audio up-mixing and down-mixing will happen.
  ChannelInterpretation channelInterpretation();

  /// Unset the callback to run when an unhandled exception occurs in the audio processor.
  void clearOnprocessorerror();

  /// Disconnects all outgoing connections from the AudioNode.
  void disconnect();

  /// Disconnects all outgoing connections at the given output port from the AudioNode.
  ///
  /// # Panics
  ///
  /// This function will panic when
  /// - if the output port is out of bounds for this node
  void disconnectOutput({required int output});

  int numberOfInputs();

  int numberOfOutputs();

  /// Collection of AudioParam objects with associated names of this node
  ///
  /// This map is populated from a list of [`AudioParamDescriptor`]s in the
  /// [`AudioWorkletProcessor`] class constructor at the instantiation.
  void parameters();

  void registration();
}

abstract class AudioWorkletProcessor {}
