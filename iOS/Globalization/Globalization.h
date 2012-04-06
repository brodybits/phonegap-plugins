//
//	MIT Licensed

#import <Foundation/Foundation.h>


#import <Foundation/Foundation.h>
#ifdef CORDOVA_FRAMEWORK
#import <Cordova/CDVPlugin.h>
#else
#import "CDVPlugin.h"
#endif

@interface Globalization : CDVPlugin {
    // ..
}

- (void) getPreferredLanguage:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

@end

