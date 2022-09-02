import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'vrt_method_channel.dart';

abstract class VrtPlatform extends PlatformInterface {
  /// Constructs a VrtPlatform.
  VrtPlatform() : super(token: _token);

  static final Object _token = Object();

  static VrtPlatform _instance = MethodChannelVrt();

  /// The default instance of [VrtPlatform] to use.
  ///
  /// Defaults to [MethodChannelVrt].
  static VrtPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VrtPlatform] when
  /// they register themselves.
  static set instance(VrtPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
