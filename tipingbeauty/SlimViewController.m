//
//  SlimViewController.m
//  tipingbeauty
//
//  Created by saikrishna on 17/03/16.
//  Copyright © 2016 saikrishna. All rights reserved.
//

#import "SlimViewController.h"

@interface SlimViewController ()

@end

@implementation SlimViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor colorWithRed:80/255.0 green:210/255.0 blue:150/255.0 alpha:1.0];

    UIWebView *webView = [[UIWebView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    webView.backgroundColor = [UIColor redColor];
    NSString*fileName= @"BEAUTYDAILY";
    NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:@"pdf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL fileURLWithPath:path isDirectory:NO]];
    [webView setScalesPageToFit:YES];
    [webView loadRequest:request];
    [self.view addSubview:webView];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
