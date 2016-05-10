//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

        NSString *palindrome = @"palindrome";
        NSString *reversed = [ self stringByReversingString:palindrome];
        NSLog(@"%@ : %@", palindrome, reversed);
    // Checks if palindrome
        NSString *racecar = @"racecar";
        BOOL racecarIsPalindrome = [self stringIsPalindrome: racecar];
        NSLog(@"%d : %@", racecarIsPalindrome, racecar);
    // Checks if palindrome
    BOOL palindromeIsPalindrome = [self stringIsPalindrome: palindrome];
    
        NSLog(@"%d : %@", palindromeIsPalindrome, palindrome);
    // checks if capitalized Bob is palindome
        NSString *bob = @"Bob";
        BOOL bobIsPalindrome = [self stringIsPalindrome: bob];
        NSLog(@"%d : %@", bobIsPalindrome, bob);
    // checks if Kanakanak is palindrome
    NSString *kanakanak = @"Kanakanak";
    BOOL kanakanakIsPalindrome = [self stringIsPalindrome: kanakanak];
    NSLog(@"%d : %@", kanakanakIsPalindrome, kanakanak);
    
    // checks is Aibohphobia is palindrome
    NSString *aibohphobia = @"Aibohphobia";
    BOOL aibohphobiaIsPalindrome = [self stringIsPalindrome: aibohphobia];
    
    NSLog(@"%d : %@", aibohphobiaIsPalindrome, aibohphobia);
    
    //CHECKS for palindrome phrases
    
    NSString *notAPalindrome = @"this is not a palindrome";
    BOOL notAPalindromeIsPalindrome = [self stringIsPalindrome: notAPalindrome];
    NSLog(@"%d : %@", notAPalindromeIsPalindrome, notAPalindrome);
    
    NSString *neverOdd = @"never odd or even";
    BOOL neverOddIsPalindrome = [self stringIsPalindrome:neverOdd];
    NSLog(@" %d: %@", neverOddIsPalindrome, neverOdd);
    
    NSString *iPreferPi =@"I prefer pi";
    BOOL iPreferPiIsPalindrome = [self stringIsPalindrome:iPreferPi];
    NSLog(@"%d : %@", iPreferPiIsPalindrome, iPreferPi);
    
    NSString *fleeToMe = @"Flee to me, remote elf.";
    BOOL fleeToMeIsPalindrome = [self stringIsPalindrome:fleeToMe];
    NSLog(@" %d : %@", fleeToMeIsPalindrome, fleeToMe);
    
    NSString *norma = @"Norma is a selfless as I am, Ron.";
    BOOL narmaIsPalindrome = [self stringIsPalindrome:norma];
    NSLog(@"%d : %@ ", narmaIsPalindrome, norma);
    
    NSString *papayaWar = @"No sir! Away! A papaya war is on.";
    BOOL papayaWarIsPalindrome = [self stringIsPalindrome:papayaWar];
    NSLog(@"%d : %@", papayaWarIsPalindrome, papayaWar);
    
    
    
    // do not alter
    return YES;  //
}   ///////////////

// Instance or Class Indicator, Return type, method name, argument
-(BOOL) stringIsPalindrome:(NSString *)string {

    
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *lowercase = [spaceless lowercaseString];
    
    NSString *reverse = [self stringByReversingString:lowercase];
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}
-(NSString *) stringByReversingString:(NSString *)string{
   
        // @" " = container for reversed string
    
        NSString *result = @"";
        // NSLog(@"%@",string);

        // wtf is unichar ??
    
for (NSUInteger i = [string length]; i > 0; i--) {
    
        // for difference btwn string length and highest value index
        NSUInteger index = i - 1;
    
        UniChar c = [string characterAtIndex: index];
        
        result = [result stringByAppendingFormat: @"%C", c];
    }
        //NSLog(@"%@", result);
        return result;

    }



@end
