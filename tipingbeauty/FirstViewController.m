//
//  FirstViewController.m
//  tipingbeauty
//
//  Created by saikrishna on 16/03/16.
//  Copyright © 2016 saikrishna. All rights reserved.
//

#import "FirstViewController.h"
#import "male.h"
#import "female.h"
#import "dailytips.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    UINavigationBar *navigationBar = self.navigationController.navigationBar;
    
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"NavigationBarBackground"]
                       forBarPosition:UIBarPositionAny
                           barMetrics:UIBarMetricsCompact];
    
    [navigationBar setShadowImage:[UIImage new]];
    
    self.title=[NSLocalizedString(@"TIPINGBEAUTY", nil) uppercaseString];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    
    UIButton *male=[[UIButton alloc]init];
    [male setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [male addTarget:self action:@selector(click:)forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *female=[[UIButton alloc]init];
    [female setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [female addTarget:self action:@selector(click:)forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *dailytip=[[UIButton alloc]init];
    [dailytip setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [dailytip addTarget:self action:@selector(click:)forControlEvents:UIControlEventTouchUpInside];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)male:(id)sender {
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Title" message:@"Wellcome Handsome" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"start your fairness" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
        male *wgvc = [male new];
        [self.navigationController pushViewController:wgvc animated:NO];
        
    }];
    
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"start your beauty" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
        female *wlvc = [female new];
        [self.navigationController pushViewController:wlvc animated:NO];
        
    }];
    
    UIAlertAction *dismiss = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
    }];
    
    [alertController addAction:action1];
    
    [alertController addAction:dismiss];
    
    [self presentViewController:alertController animated:YES completion:^{
        
    }];
    
    
}


- (IBAction)female:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Title" message:@"Wellcome beauty" preferredStyle:UIAlertControllerStyleActionSheet];
    
    
    UIAlertAction *action2             = [UIAlertAction actionWithTitle:@"start your beauty" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
    female *wlvc    = [female new];
        [self.navigationController pushViewController:wlvc animated:NO];
        
    }];
    
    UIAlertAction *dismiss = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
    }];
    

    [alertController addAction:action2];
    [alertController addAction:dismiss];
    
    [self presentViewController:alertController animated:YES completion:^{
        
    }];
    

}

- (IBAction)dailytips:(id)sender {
//    dailytips *d=[[dailytips alloc]init];
//    [self.navigationController pushViewController:d animated:YES];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Title" message:@"Wellcome Gorgeous" preferredStyle:UIAlertControllerStyleActionSheet];
    
    
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"start your TIP" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
        dailytips *dvc = [dailytips new];
        [self.navigationController pushViewController:dvc animated:NO];
        
    }];
    
    UIAlertAction *dismiss = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        
    }];
    
    
    [alertController addAction:action2];
    [alertController addAction:dismiss];
    
    [self presentViewController:alertController animated:YES completion:^{
        
    }];
    

}


//-(void)click{
//    
//    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Title" message:@"Wellcome Handsome" preferredStyle:UIAlertControllerStyleActionSheet];
//    
//    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"start your fairness" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
//        
//        male *wgvc = [male new];
//        [self.navigationController pushViewController:wgvc animated:NO];
//        
//    }];
//    
//    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"start your beauty" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
//        
//        female *wlvc = [female new];
//        [self.navigationController pushViewController:wlvc animated:NO];
//        
//    }];
//    
//    UIAlertAction *dismiss = [UIAlertAction actionWithTitle:@"Dismiss" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
//        
//    }];
//    
//    [alertController addAction:action1];
//    [alertController addAction:action2];
//    [alertController addAction:dismiss];
//    
//    [self presentViewController:alertController animated:YES completion:^{
//        
//    }];
//    
//}

@end
