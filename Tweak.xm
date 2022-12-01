#import <Foundation/Foundation.h>
#include <UIKit/UIKit.h>
static BOOL _debug = false; 
static CGFloat width = [UIScreen mainScreen].bounds.size.width;
static CGFloat height = [UIScreen mainScreen].bounds.size.height;
//Create main
void loadPrefs() {
    //Load preferences
    NSDictionary *prefs = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.ioscreatix.sidestatus.plist"];
    //Define variables from prefs
    //Redeclare _debug to key "debug" from prefs
    _debug = ( [prefs objectForKey:@"debug"] ? [[prefs objectForKey:@"debug"] boolValue] : _debug );
}
//Debug replace clock if Debug = True
%hook _UIStatusBarStringView
- (void)rotate {
    loadPrefs();
    if ((_debug = true)) {
      
    }
}
%end
