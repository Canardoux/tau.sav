/// Web Audio API
///
/// https://webaudio.github.io/web-audio-api/

// ignore_for_file: unused_import

library riri;

import '../tau.dart';
import 'webaudio.dart';

///  The interface represents the end destination of an audio graph
/// in a given context — usually the speakers of your device. It can
/// also be the node that will "record" the audio data when used with
/// an [OfflineAudioContext].
///   has no output (as it is the output, no more [AudioNode] can be
/// linked after it in the audio graph) and one input. The number of
/// channels in the input must be between [0] and the
/// [maxChannelCount] value or an exception is raised.
///  The of a given [AudioContext] can be retrieved using the
/// [AudioContext.destination] property.
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
///
///
///    AudioDestinationNode
///
///
///
///
///
///    Number of inputs
///    [1]
///
///
///    Number of outputs
///    [0]
///
///
///    Channel count mode
///    ["explicit"]
///
///
///    Channel count
///    [2]
///
///
///    Channel interpretation
///    ["speakers"]
///
///
///
class AudioDestinationNode implements AudioNode {
  /* ctor */ AudioDestinationNode();
}

extension PropsAudioDestinationNode on AudioDestinationNode {
  int get maxChannelCount => JsUtil.iGetProperty(this, 'maxChannelCount');
}
