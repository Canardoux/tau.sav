import '../tau.dart';
import 'webaudio.dart';

class AudioNodeOptions {
  /* ctor */ AudioNodeOptions._(
      {int? channelCount,
      String? channelCountMode,
      String? channelInterpretation});

  factory AudioNodeOptions(
          {int? channelCount,
          ChannelCountMode? channelCountMode,
          ChannelInterpretation? channelInterpretation}) =>
      AudioNodeOptions._(
          channelCount: channelCount,
          channelCountMode: channelCountMode?.value,
          channelInterpretation: channelInterpretation?.value);
}

extension PropsAudioNodeOptions on AudioNodeOptions {
  int get channelCount => JsUtil.iGetProperty(this, 'channelCount');
  set channelCount(int newValue) {
    JsUtil.setProperty(this, 'channelCount', newValue);
  }

  ChannelCountMode get channelCountMode =>
      ChannelCountMode.fromValue(JsUtil.sGetProperty(this, 'channelCountMode'));
  set channelCountMode(ChannelCountMode newValue) {
    JsUtil.setProperty(this, 'channelCountMode', newValue.value);
  }

  ChannelInterpretation get channelInterpretation =>
      ChannelInterpretation.fromValue(
          JsUtil.sGetProperty(this, 'channelInterpretation'));
  set channelInterpretation(ChannelInterpretation newValue) {
    JsUtil.setProperty(this, 'channelInterpretation', newValue.value);
  }
}
