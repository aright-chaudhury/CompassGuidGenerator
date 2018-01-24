/********* Guid.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface Guid : CDVPlugin {
  // Member variables go here.
}

+ (NSString*)GUIDString;

- (NSString*)newGuid:(CDVInvokedUrlCommand*)command;

// - (void)coolMethod:(CDVInvokedUrlCommand*)command;
@end

@implementation Guid

/*
- (void)coolMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
*/

- (NSString*)newGuid:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* uuid = [self class].GUIDString;
    
	pluginResult = [CDVPluginResult resultWithStatus: CDVCommandStatus_OK messageAsString: uuid];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    return uuid;
}

+ (NSString*)GUIDString {
    CFUUIDRef theUUID = CFUUIDCreate(NULL);
    CFStringRef string = CFUUIDCreateString(NULL, theUUID);
    CFRelease(theUUID);
    return [(__bridge NSString *)string lowercaseString];
}

@end
