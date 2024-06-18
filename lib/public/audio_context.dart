/// Web Audio API
///
/// https://webaudio.github.io/web-audio-api/

// ignore_for_file: unused_import

///  The interface of the Web Audio API acts as a base definition for
/// online and offline audio-processing graphs, as represented by
/// [AudioContextTmp] and [OfflineAudioContext] respectively. You
/// wouldn't use directly — you'd use its features via one of these
/// two inheriting interfaces.
///  A can be a target of events, therefore it implements the
/// [EventTarget] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    BaseAudioContext
///
///

library momo;

import '../tau.dart';
import 'audio_listener.dart';
import 'audio_destination_node.dart';

enum AudioContextState {
  suspended('suspended'),
  running('running'),
  closed('closed');

  final String value;
  static AudioContextState fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<AudioContextState> fromValues(Iterable<String> values) =>
      values.map(fromValue);
  const AudioContextState(this.value);
}

class BaseAudioContext implements EventTarget {
  factory BaseAudioContext() {
    Tau.tau.logger.t('ctor: BaseAudioContect');
    return BaseAudioContext();
  }
}

extension PropsBaseAudioContext on BaseAudioContext {
  AudioDestinationNode get destination =>
      AudioDestinationNode(); /* !!!!!
      js_util.getProperty(this, 'destination');

  double get sampleRate => js_util.getProperty(this, 'sampleRate');
  double get currentTime => js_util.getProperty(this, 'currentTime');
  AudioListener get listener => js_util.getProperty(this, 'listener');
  AudioContextState get state =>
      AudioContextState.fromValue(js_util.getProperty(this, 'state'));
  AudioWorklet get audioWorklet => js_util.getProperty(this, 'audioWorklet');
  EventHandlerNonNull? get onstatechange =>
      js_util.getProperty(this, 'onstatechange');
  set onstatechange(EventHandlerNonNull? newValue) {
    js_util.setProperty(this, 'onstatechange', newValue);
  }

  AnalyserNode createAnalyser() =>
      js_util.callMethod(this, 'createAnalyser', []);

  BiquadFilterNode createBiquadFilter() =>
      js_util.callMethod(this, 'createBiquadFilter', []);

  AudioBuffer createBuffer(
          int numberOfChannels, int length, double sampleRate) =>
      js_util.callMethod(
          this, 'createBuffer', [numberOfChannels, length, sampleRate]);

  AudioBufferSourceNode createBufferSource() =>
      js_util.callMethod(this, 'createBufferSource', []);

  ChannelMergerNode createChannelMerger([int? numberOfInputs = 6]) =>
      js_util.callMethod(this, 'createChannelMerger', [numberOfInputs]);

  ChannelSplitterNode createChannelSplitter([int? numberOfOutputs = 6]) =>
      js_util.callMethod(this, 'createChannelSplitter', [numberOfOutputs]);

  ConstantSourceNode createConstantSource() =>
      js_util.callMethod(this, 'createConstantSource', []);

  ConvolverNode createConvolver() =>
      js_util.callMethod(this, 'createConvolver', []);

  DelayNode createDelay([double? maxDelayTime = 1.0]) =>
      js_util.callMethod(this, 'createDelay', [maxDelayTime]);

  DynamicsCompressorNode createDynamicsCompressor() =>
      js_util.callMethod(this, 'createDynamicsCompressor', []);

  GainNode createGain() => js_util.callMethod(this, 'createGain', []);

  IIRFilterNode createIIRFilter(
          Iterable<double> feedforward, Iterable<double> feedback) =>
      js_util.callMethod(this, 'createIIRFilter', [feedforward, feedback]);

  OscillatorNode createOscillator() =>
      js_util.callMethod(this, 'createOscillator', []);

  PannerNode createPanner() => js_util.callMethod(this, 'createPanner', []);

  PeriodicWave createPeriodicWave(Iterable<double> real, Iterable<double> imag,
          [PeriodicWaveConstraints? constraints]) =>
      js_util.callMethod(this, 'createPeriodicWave', [real, imag, constraints]);

  ScriptProcessorNode createScriptProcessor(
          [int? bufferSize = 0,
          int? numberOfInputChannels = 2,
          int? numberOfOutputChannels = 2]) =>
      js_util.callMethod(this, 'createScriptProcessor',
          [bufferSize, numberOfInputChannels, numberOfOutputChannels]);

  StereoPannerNode createStereoPanner() =>
      js_util.callMethod(this, 'createStereoPanner', []);

  WaveShaperNode createWaveShaper() =>
      js_util.callMethod(this, 'createWaveShaper', []);

  Future<AudioBuffer> decodeAudioData(ByteBuffer audioData,
          [DecodeSuccessCallback? successCallback,
          DecodeErrorCallback? errorCallback]) =>
      js_util.promiseToFuture(js_util.callMethod(this, 'decodeAudioData', [
        audioData,
        successCallback == null ? null : allowInterop(successCallback),
        errorCallback == null ? null : allowInterop(errorCallback)
      ]));
      */
}

enum AudioContextLatencyCategory {
  balanced('balanced'),
  interactive('interactive'),
  playback('playback');

  final String value;
  static AudioContextLatencyCategory fromValue(String value) =>
      values.firstWhere((e) => e.value == value);
  static Iterable<AudioContextLatencyCategory> fromValues(
          Iterable<String> values) =>
      values.map(fromValue);
  const AudioContextLatencyCategory(this.value);
}

///  The interface represents an audio-processing graph built from
/// audio modules linked together, each represented by an
/// [AudioNode].
///  An audio context controls both the creation of the nodes it
/// contains and the execution of the audio processing, or decoding.
/// You need to create an before you do anything else, as everything
/// happens inside a context. It's recommended to create one
/// AudioContext and reuse it instead of initializing a new one each
/// time, and it's OK to use a single for several different audio
/// sources and pipeline concurrently.
///
///
///
///    EventTarget
///
///
///
///
///
///    BaseAudioContext
///
///
///
///
///
///    AudioContext
///
///
class AudioContextTmp implements BaseAudioContext {
  AudioContextTmp._([AudioContextOptions? contextOptions]);

  factory AudioContextTmp([AudioContextOptions? contextOptions]) =>
      AudioContextTmp._(contextOptions);
}

extension PropsAudioContext on AudioContextTmp {
  /*
  double get baseLatency => js_util.getProperty(this, 'baseLatency');
  double get outputLatency => js_util.getProperty(this, 'outputLatency');
  AudioRenderCapacity get renderCapacity =>
      js_util.getProperty(this, 'renderCapacity');
  AudioTimestamp getOutputTimestamp() =>
      js_util.callMethod(this, 'getOutputTimestamp', []);

  Future<void> resume() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'resume', []));

  Future<void> suspend() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'suspend', []));

  Future<void> close() =>
      js_util.promiseToFuture(js_util.callMethod(this, 'close', []));

  MediaElementAudioSourceNode createMediaElementSource(
          HTMLMediaElement mediaElement) =>
      js_util.callMethod(this, 'createMediaElementSource', [mediaElement]);

  MediaStreamAudioSourceNode createMediaStreamSource(MediaStream mediaStream) =>
      js_util.callMethod(this, 'createMediaStreamSource', [mediaStream]);

  MediaStreamTrackAudioSourceNode createMediaStreamTrackSource(
          MediaStreamTrack mediaStreamTrack) =>
      js_util
          .callMethod(this, 'createMediaStreamTrackSource', [mediaStreamTrack]);

  MediaStreamAudioDestinationNode createMediaStreamDestination() =>
      js_util.callMethod(this, 'createMediaStreamDestination', []);
      */
}

class AudioContextOptions {
  factory AudioContextOptions({dynamic latencyHint, double? sampleRate}) {
    Tau.tau.logger.t('ctor: AudioContextOption');
    return AudioContextOptions();
  }
}

extension PropsAudioContextOptions on AudioContextOptions {
  dynamic get latencyHint => JsUtil.iGetProperty(this, 'latencyHint');
  set latencyHint(dynamic newValue) {
    JsUtil.setProperty(this, 'latencyHint', newValue);
  }

  double get sampleRate => JsUtil.dGetProperty(this, 'sampleRate');
  set sampleRate(double newValue) {
    JsUtil.setProperty(this, 'sampleRate', newValue);
  }
}
