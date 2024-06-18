import 'package:flutter_test/flutter_test.dart';
import 'package:tau_plugin/tau_plugin.dart';
import 'package:tau_plugin/tau_plugin_platform_interface.dart';
import 'package:tau_plugin/tau_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockTauPluginPlatform
    with MockPlatformInterfaceMixin
    implements TauPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final TauPluginPlatform initialPlatform = TauPluginPlatform.instance;

  test('$MethodChannelTauPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelTauPlugin>());
  });

  test('getPlatformVersion', () async {
    TauPlugin tauPlugin = TauPlugin();
    MockTauPluginPlatform fakePlatform = MockTauPluginPlatform();
    TauPluginPlatform.instance = fakePlatform;

    expect(await tauPlugin.getPlatformVersion(), '42');
  });
}
