import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mac_address_method_channel.dart';

abstract class MacAddressPlatform extends PlatformInterface {
  /// Constructs a MacAddressPlatform.
  MacAddressPlatform() : super(token: _token);

  static final Object _token = Object();

  static MacAddressPlatform _instance = MethodChannelMacAddress();

  /// The default instance of [MacAddressPlatform] to use.
  ///
  /// Defaults to [MethodChannelMacAddress].
  static MacAddressPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MacAddressPlatform] when
  /// they register themselves.
  static set instance(MacAddressPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getMacAddress(String defaultMacAddress) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
