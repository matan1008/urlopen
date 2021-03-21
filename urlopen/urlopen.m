//
//  urlopen.m
//  urlopen
//
//  Created by Matan on 3/15/21.
//

@import Foundation;
@import CoreServices;
#import "urlopen.h"


@interface LSApplicationWorkspace : NSObject

- (int) openURL:(NSURL *)url;
+ (LSApplicationWorkspace *) defaultWorkspace;

@end


int main(int argc, const char *argv[]) {
    @autoreleasepool {
        if (2 > argc) {
            NSLog(@"Mission URL paramters");
            return 1;
        }
        id workspace = [LSApplicationWorkspace defaultWorkspace];
        NSString *argument = [NSString stringWithCString:argv[1] encoding:NSUTF8StringEncoding];
        NSLog(@"Opening URL: %@", argument);
        int result = [workspace openURL:[NSURL URLWithString:argument]];
        NSLog(@"openURL result: %d", result);
    }
    return 0;
}
