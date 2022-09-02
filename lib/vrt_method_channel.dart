import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'vrt_platform_interface.dart';

/// An implementation of [VrtPlatform] that uses method channels.
class MethodChannelVrt extends VrtPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('vrt');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
