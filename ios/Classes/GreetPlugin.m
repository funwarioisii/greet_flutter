#import "GreetPlugin.h"
#import <greet/greet-Swift.h>

@implementation GreetPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGreetPlugin registerWithRegistrar:registrar];
}
@end
