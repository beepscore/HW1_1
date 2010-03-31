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
    NSWindow *window;

	NSTextField*		textField_;
}

@property (assign) IBOutlet NSWindow*		window;
@property (assign) IBOutlet NSTextField*	textField;

@end
