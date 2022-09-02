import 'package:flutter_test/flutter_test.dart';
import 'package:vrt/vrt.dart';
import 'package:vrt/vrt_platform_interface.dart';
import 'package:vrt/vrt_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVrtPlatform
    with MockPlatformInterfaceMixin
    implements VrtPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VrtPlatform initialPlatform = VrtPlatform.instance;

  test('$MethodChannelVrt is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVrt>());
  });

  test('getPlatformVersion', () async {
    Vrt vrtPlugin = Vrt();
    MockVrtPlatform fakePlatform = MockVrtPlatform();
    VrtPlatform.instance = fakePlatform;

    expect(await vrtPlugin.getPlatformVersion(), '42');
  });
}
