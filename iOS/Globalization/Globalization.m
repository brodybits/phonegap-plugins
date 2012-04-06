//
//	MIT Licensed

#import "Globalization.h"


@implementation Globalization

- (void) getPreferredLanguage:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options
{
	NSString* callbackId = [arguments objectAtIndex:0];

	NSString* jsString = nil; // result string
    NSLog(@"log1");
    // Source: http://stackoverflow.com/questions/3910244/getting-current-device-language-in-ios
    // (should be OK)
    NSString * language = [[NSLocale preferredLanguages] objectAtIndex:0];

	if(language) {
		NSDictionary * dictionary = [NSDictionary dictionaryWithObject: language forKey:@"value"];

		CDVPluginResult * result = [CDVPluginResult resultWithStatus: CDVCommandStatus_OK
                                    messageAsDictionary: dictionary];

		jsString = [result toSuccessCallbackString:callbackId];
	}
	else {
        // TBD is this ever expected to happen?
		CDVPluginResult * result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR
                                    messageAsString: @"UNKNOWN_ERROR"];

		jsString = [result toErrorCallbackString:callbackId];
	}

	[self writeJavascript:jsString];
}

@end

