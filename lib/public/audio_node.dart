import '../tau.dart';

///  The interface is a generic interface for representing an audio
/// processing module.
/// Examples include:
///
///   an audio source (e.g. an HTML [<audio>] or [<video>] element,
/// an [OscillatorNode], etc.),
///  the audio destination,
///   intermediate processing module (e.g. a filter like
/// [BiquadFilterNode] or [ConvolverNode]), or
///  volume control (like [GainNode])
///
///
///
///
///    EventTarget
///
///
///
///
///
///    AudioNode
///
///
///
///   Note: An can be target of events, therefore it implements the
/// [EventTarget] interface.
///
class AudioNode implements EventTarget {
  factory AudioNode() {
    Tau.tau.logger.t('ctor: AudioNode');
    return AudioNode();
  }
}

extension PropsAudioNode on AudioNode {
  AudioNode connect(AudioNode destinationNode,
      [int? output = 0, int? input = 0]) {
    /*js_util.callMethod(this, 'connect', [destinationNode, output, input]);*/ return this;
  }

  void disconnect([AudioNode? destinationNode, int? output, int? input]) =>
      JsUtil.callMethod(this, 'disconnect', [destinationNode, output, input]);
/*
  BaseAudioContext get context => js_util.getProperty(this, 'context');
  int get numberOfInputs => js_util.getProperty(this, 'numberOfInputs');
  int get numberOfOutputs => js_util.getProperty(this, 'numberOfOutputs');
  int get channelCount => js_util.getProperty(this, 'channelCount');
  set channelCount(int newValue) {
    js_util.setProperty(this, 'channelCount', newValue);
  }

  ChannelCountMode get channelCountMode =>
      ChannelCountMode.fromValue(js_util.getProperty(this, 'channelCountMode'));
  set channelCountMode(ChannelCountMode newValue) {
    js_util.setProperty(this, 'channelCountMode', newValue.value);
  }

  ChannelInterpretation get channelInterpretation =>
      ChannelInterpretation.fromValue(
          js_util.getProperty(this, 'channelInterpretation'));
  set channelInterpretation(ChannelInterpretation newValue) {
    js_util.setProperty(this, 'channelInterpretation', newValue.value);
  }
  */
}
