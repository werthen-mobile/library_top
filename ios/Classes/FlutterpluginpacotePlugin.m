#import "FlutterpluginpacotePlugin.h"
#if __has_include(<flutterpluginpacote/flutterpluginpacote-Swift.h>)
#import <flutterpluginpacote/flutterpluginpacote-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutterpluginpacote-Swift.h"
#endif

@implementation FlutterpluginpacotePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterpluginpacotePlugin registerWithRegistrar:registrar];
}
@end
