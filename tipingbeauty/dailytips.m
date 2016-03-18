//
//  dailytips.m
//  tipingbeauty
//
//  Created by saikrishna on 16/03/16.
//  Copyright © 2016 saikrishna. All rights reserved.
//

#import "dailytips.h"

@interface dailytips ()

@end

@implementation dailytips

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor colorWithRed:139/255.0 green:157/255.0 blue:195/255.0 alpha:1.0];
    UINavigationBar *navigationBar = self.navigationController.navigationBar;
    
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"NavigationBarBackground"]
                       forBarPosition:UIBarPositionAny
                           barMetrics:UIBarMetricsCompact];
    
    [navigationBar setShadowImage:[UIImage new]];
    
    self.title=[NSLocalizedString(@"DAILYTIPS", nil) uppercaseString];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    

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
