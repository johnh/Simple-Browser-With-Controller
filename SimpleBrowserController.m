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
- (void) resetButtons {
	[backButton setEnabled:[myWebView canGoBack]];
	[forwardButton setEnabled:[myWebView canGoForward]];
	
}

-(IBAction) loadPreviousPage: (id) sender {
	[myWebView goBack];
}

-(IBAction) loadNextPage: (id) sender {
	[myWebView goForward];
	
}

-(IBAction) loadURLFrom: (id) sender {
	[myWebView takeStringURLFrom:sender];	
}

//update window title when title loaded from website
- (void)webView:(WebView *)sender didReceiveTitle:(NSString *)title forFrame:(WebFrame *)frame {	
	[[sender window] setTitle:title];
}

//update UI elements when web page finished loading
- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame {
	[self resetButtons];
	[urlTextField setStringValue:[myWebView mainFrameURL]];
	
}

@end
