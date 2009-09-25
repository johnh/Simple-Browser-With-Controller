//
//  SimpleBrowserController.h
//  SimpleBrowserWithController
//
//  Created by John Haro on 9/19/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebView.h>



@interface SimpleBrowserController : NSObject {
	// I'll declare instance variables here
	IBOutlet NSButton *backButton;
	IBOutlet NSButton *forwardButton;
	IBOutlet NSTextField *urlTextField;
	//IBOutlet NSProgressIndicator *loadIndicator; //removed to use notification controller instead
}
	// I'll declare methods here

@end
