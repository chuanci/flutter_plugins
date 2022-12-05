import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mac_address_platform_interface.dart';

/// An implementation of [MacAddressPlatform] that uses method channels.
class MethodChannelMacAddress extends MacAddressPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('mac_address');

  @override
  Future<String?> getMacAddress(String defaultMacAddress) async {
    final macAddress =
        await methodChannel.invokeMethod<String>('getMacAddress');
    return macAddress ?? defaultMacAddress;
  }
}
