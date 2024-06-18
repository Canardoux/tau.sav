import 'tau_plugin_platform_interface.dart';

class TauPlugin {
  /// Tau() and [tau] are synonymous.
  static final TauPlugin tauPlugin = TauPlugin._internal();

  /// Tau() is a singleton
  factory TauPlugin() {
    return tauPlugin;
  }

  TauPlugin._internal() {
    //init(lev: Lg.Level.trace);
  }

  Future<String?> getPlatformVersion() {
    return TauPluginPlatform.instance.getPlatformVersion();
  }
}
