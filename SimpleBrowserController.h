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
	IBOutlet WebView *myWebView;
	IBOutlet NSButton *backButton;
	IBOutlet NSButton *forwardButton;
	IBOutlet NSTextField *urlTextField;
}
	// I'll declare methods here
-(IBAction) loadPreviousPage: (id) sender;
-(IBAction) loadNextPage: (id) sender;
-(IBAction) loadURLFrom: (id) sender;
@end
