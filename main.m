#import <Foundation/Foundation.h>
#import <MobileCoreServices/LSApplicationWorkspace.h>
#include <stdio.h>


int main(int argc, char *argv[], char *envp[]) {
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
		return 0;
	}
}
