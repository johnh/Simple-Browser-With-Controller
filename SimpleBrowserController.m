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
	[self resetButtons];
	 
}

-(IBAction) loadNextPage: (id) sender {
	[myWebView goForward];
	[self resetButtons];
}

-(IBAction) loadURLFrom: (id) sender {
	[myWebView takeStringURLFrom:sender];
	[self resetButtons];
}


- (void)webView:(WebView *)sender didReceiveTitle:(NSString *)title forFrame:(WebFrame *)frame {	
	[[sender window] setTitle:title];
}



@end
