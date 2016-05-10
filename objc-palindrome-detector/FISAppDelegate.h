//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

 // stringIsPalindrome is a method that takes (NSString *) string <-- [argument]; {BOOL is the return type}

- (BOOL) stringIsPalindrome: (NSString *) string;
- (NSString *) stringByReversingString: (NSString *) string;

@end
