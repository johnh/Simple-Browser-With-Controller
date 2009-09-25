//
//  LoadingIndicatorController.h
//  SimpleBrowserWithController
//
//  Created by John Haro on 9/25/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebView.h>


@interface LoadingIndicatorController : NSObject {
	IBOutlet NSProgressIndicator * loadIndicator;
	IBOutlet WebView * myWebView;

}

@end
