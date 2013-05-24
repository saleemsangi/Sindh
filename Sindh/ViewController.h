//
//  ViewController.h
//  Sindh
//
//  Created by Sangi, Saleem (Contractor) on 5/22/13.
//  Copyright (c) 2013 Ignas Tech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainView.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet MainView *mainView;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

- (IBAction)mainBtnPressed:(id)sender;
- (IBAction)swipedLeft:(id)sender;
- (IBAction)swipedRight:(id)sender;
@end
