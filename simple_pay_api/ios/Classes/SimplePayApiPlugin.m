#import "SimplePayApiPlugin.h"
#if __has_include(<simple_pay_api/simple_pay_api-Swift.h>)
#import <simple_pay_api/simple_pay_api-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "simple_pay_api-Swift.h"
#endif

@implementation SimplePayApiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSimplePayApiPlugin registerWithRegistrar:registrar];
}
@end
