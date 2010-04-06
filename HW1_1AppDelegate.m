//
//  HW1_1AppDelegate.m
//  HW1_1
//
//  Created by 23 on 3/28/10.
//  Copyright 2010 RogueSheep. All rights reserved.
//

#import "HW1_1AppDelegate.h"

@interface HW1_1AppDelegate ()

- (NSString*) newZeroString;
- (void) reverseStringsInArray:(NSArray*)objects;

@end


@implementation HW1_1AppDelegate

#pragma mark Properties
@synthesize window;
@synthesize textField = textField_;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{	
	// Create an array of numbers and strings
	
    // You own any object you create with alloc, new, or copy.  You are responsible for releasing it.
    // http://developer.apple.com/mac/library/documentation/cocoa/conceptual/MemoryMgmt/Articles/mmObjectOwnership.html#//apple_ref/doc/uid/20000043-BEHDEDDB
	NSString* zeroString		= [self newZeroString];    
	NSString* fiveString		= [[NSString alloc] initWithString:@"five"];
	NSString* twentyThreeString	= [[NSString alloc] initWithString:@"twenty three"];
    
    // SB changed
    // test a string with one character
	NSString* bString           = [[NSString alloc] initWithString:@"b"];

    // arrayWithObjects returns autoreleased array
	NSArray* numbersAndStrings = [NSArray arrayWithObjects:zeroString,
														   [NSNumber numberWithInt:2],
														   [NSNumber numberWithInt:3],
														   fiveString,
														   twentyThreeString,
														   [NSNumber numberWithInt:117],
                                                           bString,
														   nil];
    
    // SB changed
    // array retained its elements.  Release the strings
    [zeroString release];
    [fiveString release];
    [twentyThreeString release];
    [bString release];

	[self reverseStringsInArray:numbersAndStrings];
}


- (void) reverseStringsInArray:(NSArray*)objects
{
    // NSString class method string returns an autoreleased empty string
	NSMutableString*	textFieldContent = [NSMutableString string];

	// SB changed 
    // I think this got released before we had a chance to use it
    // NSMutableString*	reversedString = nil;
	
	for (NSObject* object in objects)
	{
		if ([object isKindOfClass:[NSString class]])
		{
			NSString* stringToReverse = (NSString*)object;
			NSUInteger length = [stringToReverse length];
			
			// reversedString = [[NSMutableString alloc] initWithCapacity:length];
			NSMutableString* reversedString = [[NSMutableString alloc] initWithCapacity:length];
			
			for (NSInteger i = length - 1; i >= 0; i--)
			{
				[reversedString appendFormat:@"%C",[stringToReverse characterAtIndex:i]];
			}
            
            [textFieldContent appendFormat:@"Reversed a string:%@\n", reversedString];
            [reversedString release];
            // Chris suggests set to nil
            reversedString = nil;
		}

		// SB changed - move these into if block above
//		if ( reversedString )
//		{
//			[textFieldContent appendFormat:@"Reversed a string:%@\n", reversedString];
//		}
//		
//		if ( reversedString != nil )
//		{
//			[reversedString release];
//		}
	}
	
	// better practice to use property setter instead of instance variable
    // [textField_ setStringValue:textFieldContent];
	[self.textField setStringValue:textFieldContent];
	return;
}


// SB changed
// By convention, a method whose name starts with "new" returns an object with a retain count of 1.
- (NSString*) newZeroString
{
    //	return [[[NSString alloc]initWithString:@"zero"] autorelease];	
	return [[NSString alloc] initWithString:@"zero"];	
}

@end
