#import "VrtPlugin.h"
#if __has_include(<vrt/vrt-Swift.h>)
#import <vrt/vrt-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "vrt-Swift.h"
#endif

@implementation VrtPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVrtPlugin registerWithRegistrar:registrar];
}
@end
