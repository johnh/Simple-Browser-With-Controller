//
//  LoadingIndicatorController.m
//  SimpleBrowserWithController
//
//  Created by John Haro on 9/25/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "LoadingIndicatorController.h"


@implementation LoadingIndicatorController

- (void) updateLoadIndicator: (NSNotification *) notification {
	[loadIndicator setDoubleValue: [myWebView estimatedProgress]];
}

- (void) clearLoadIndicator: (NSNotification *) notification {
	[loadIndicator setHidden:YES];
}

- (void) startLoadIndicator: (NSNotification *) notification {
	[loadIndicator setDoubleValue:0.0];
	[loadIndicator setHidden:NO];
}

	
-(void) awakeFromNib {
	[[NSNotificationCenter defaultCenter] 
			addObserver:self selector:@selector(updateLoadIndicator:) 
			name:WebViewProgressEstimateChangedNotification
			object:myWebView];
	
	[[NSNotificationCenter defaultCenter]
	 addObserver:self
	 selector:@selector(startLoadIndicator:) 
	 name:WebViewProgressStartedNotification 
	 object:myWebView];
	
	[[NSNotificationCenter defaultCenter]
	 addObserver:self selector:@selector(clearLoadIndicator:) 
	 name:WebViewProgressFinishedNotification object:myWebView];
}


@end
