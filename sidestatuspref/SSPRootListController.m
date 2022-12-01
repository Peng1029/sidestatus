#import <Foundation/Foundation.h>
#import "SSPRootListController.h"

@implementation SSPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}
- (void)link {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/Peng1029/sidestatus"]];
}
@end
