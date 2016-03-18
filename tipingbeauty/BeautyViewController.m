
#import "BeautyViewController.h"

@interface BeautyViewController ()

@end

@implementation BeautyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithRed:210/255.0 green:210/255.0 blue:150/255.0 alpha:1.0];
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    webView.backgroundColor = [UIColor redColor];
    NSString*fileName= @"getfit";
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



@end
