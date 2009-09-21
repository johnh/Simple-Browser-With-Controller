//
//  SimpleBrowserController.m
//  SimpleBrowserWithController
//
//  Created by John Haro on 9/19/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "SimpleBrowserController.h"


@implementation SimpleBrowserController
//haro's

//update window title when title loaded from website
- (void)webView:(WebView *)sender didReceiveTitle:(NSString *)title forFrame:(WebFrame *)frame {	
	[[sender window] setTitle:title];
}

//update UI elements when web page finished loading
- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame {
	//reset back and forward buttons, update URL
	[backButton setEnabled:[sender canGoBack]];
	[forwardButton setEnabled:[sender canGoForward]];	
	[urlTextField setStringValue:[sender mainFrameURL]];
	
}

@end
