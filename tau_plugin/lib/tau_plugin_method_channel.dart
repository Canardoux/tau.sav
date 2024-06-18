import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'tau_plugin_platform_interface.dart';

/// An implementation of [TauPluginPlatform] that uses method channels.
class MethodChannelTauPlugin extends TauPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('tau_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
