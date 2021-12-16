#import "BarcodeVisionPlugin.h"
#if __has_include(<barcode_vision/barcode_vision-Swift.h>)
#import <barcode_vision/barcode_vision-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "barcode_vision-Swift.h"
#endif

@implementation BarcodeVisionPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBarcodeVisionPlugin registerWithRegistrar:registrar];
}
@end
