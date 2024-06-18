import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'tau_plugin_method_channel.dart';

abstract class TauPluginPlatform extends PlatformInterface {
  /// Constructs a TauPluginPlatform.
  TauPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static TauPluginPlatform _instance = MethodChannelTauPlugin();

  /// The default instance of [TauPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelTauPlugin].
  static TauPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [TauPluginPlatform] when
  /// they register themselves.
  static set instance(TauPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
