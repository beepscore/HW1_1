//
//  HW1_1AppDelegate.h
//  HW1_1
//
//  Created by 23 on 3/28/10.
//  Copyright 2010 RogueSheep. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface HW1_1AppDelegate : NSObject <NSApplicationDelegate>
{
#pragma mark Instance variables
    NSWindow*      window;
	NSTextField*   textField_;
}

#pragma mark Properties

// Apple Memory Management Programming Guide for Cocoa recommends
// on Mac, assign outlet, don't dealloc it.
// on iPhone, retain outlet, dealloc it.
// http://developer.apple.com/iphone/library/documentation/Cocoa/Conceptual/MemoryMgmt/Articles/mmNibObjects.html
// On Mac, I think the .xib file File's Owner retains top level objects.
//
// Chris Hanson (from Apple) recommends use a subclass of 
// NSWindowController or NSViewController (on Mac) or UIViewController (on iPhone).
// Make a .xib file with the window controller or view controller as File's Owner.
// Then on Mac or iPhone, retain the IBOutlet properties, and release them in dealloc
// http://stackoverflow.com/questions/2097822/retain-counts-of-iboutlets

@property (assign) IBOutlet NSWindow*		window;
@property (assign) IBOutlet NSTextField*	textField;

@end
