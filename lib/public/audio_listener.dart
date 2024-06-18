import '../tau.dart';
import 'webaudio.dart';

///  The interface represents the position and orientation of the
/// unique person listening to the audio scene, and is used in audio
/// spatialization. All [PannerNode]s spatialize in relation to the
/// stored in the [BaseAudioContext.listener] attribute.
///  It is important to note that there is only one listener per
/// context and that it isn't an [AudioNode].
///
///
///
class AudioListener {
  external factory AudioListener();
}

extension PropsAudioListener on AudioListener {
  /*
  AudioParam get positionX => js_util.getProperty(this, 'positionX');
  AudioParam get positionY => js_util.getProperty(this, 'positionY');
  AudioParam get positionZ => js_util.getProperty(this, 'positionZ');
  AudioParam get forwardX => js_util.getProperty(this, 'forwardX');
  AudioParam get forwardY => js_util.getProperty(this, 'forwardY');
  AudioParam get forwardZ => js_util.getProperty(this, 'forwardZ');
  AudioParam get upX => js_util.getProperty(this, 'upX');
  AudioParam get upY => js_util.getProperty(this, 'upY');
  AudioParam get upZ => js_util.getProperty(this, 'upZ');
  void setPosition(double x, double y, double z) =>
      js_util.callMethod(this, 'setPosition', [x, y, z]);

  void setOrientation(
          double x, double y, double z, double xUp, double yUp, double zUp) =>
      js_util.callMethod(this, 'setOrientation', [x, y, z, xUp, yUp, zUp]);
      */
}
