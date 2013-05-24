//
//  ViewController.m
//  Sindh
//
//  Created by Sangi, Saleem (Contractor) on 5/22/13.
//  Copyright (c) 2013 Ignas Tech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int xForMainView;
}

@end

@implementation ViewController
@synthesize mainView = _mainView;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    xForMainView = 301;
    _webView.scrollView.bounces = NO;
     NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"] cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:60.0];
    [_webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    
    [_mainView setFrame:CGRectMake(xForMainView, _mainView.frame.origin.y, _mainView.frame.size.width, _mainView.frame.size.height)];
    
}

- (IBAction)mainBtnPressed:(id)sender {
    
    xForMainView = 0;
    if (_mainView.frame.origin.x == 0) {
        xForMainView = 301;
    }
    
    [UIView animateWithDuration:0.5 animations:^{
        [_mainView setFrame:CGRectMake(xForMainView, _mainView.frame.origin.y, _mainView.frame.size.width, _mainView.frame.size.height)];

    }];
}

- (IBAction)swipedLeft:(id)sender {
    [UIView animateWithDuration:0.5 animations:^{
        [_mainView setFrame:CGRectMake(0, _mainView.frame.origin.y, _mainView.frame.size.width, _mainView.frame.size.height)];
        
    }];
    xForMainView = 0;
}

- (IBAction)swipedRight:(id)sender {
    [UIView animateWithDuration:0.5 animations:^{
        [_mainView setFrame:CGRectMake(301, _mainView.frame.origin.y, _mainView.frame.size.width, _mainView.frame.size.height)];
    }];
    xForMainView = 301;

}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text=@"hi";
    return cell;
}
@end
