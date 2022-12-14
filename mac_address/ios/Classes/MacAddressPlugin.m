#import "MacAddressPlugin.h"
#if __has_include(<mac_address/mac_address-Swift.h>)
#import <mac_address/mac_address-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "mac_address-Swift.h"
#endif

@implementation MacAddressPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMacAddressPlugin registerWithRegistrar:registrar];
}
@end
