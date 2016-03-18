//
//  female.m
//  tipingbeauty
//
//  Created by saikrishna on 16/03/16.
//  Copyright © 2016 saikrishna. All rights reserved.
//

#import "female.h"
#import "BeautyViewController.h"
#import "SlimViewController.h"

@interface female ()

@end

@implementation female{
    UIImageView *beauty, *slim, *consult;
    UILabel *beauty1, *slim1;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor colorWithRed:253/255.f green:204/255.f blue:233/255.f alpha:1.0];
    
    UINavigationBar *navigationBar = self.navigationController.navigationBar;
    
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"NavigationBarBackground"]
                       forBarPosition:UIBarPositionAny
                           barMetrics:UIBarMetricsCompact];
    
    [navigationBar setShadowImage:[UIImage new]];
    
    self.title=[NSLocalizedString(@"FEMALEBEAUTY", nil) uppercaseString];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    
    self.view.backgroundColor = [UIColor colorWithRed:11/255.f green:222/255.f blue:77/255.f alpha:0.5f];
    
    beauty = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"/Users/saikrishna/Developer/tipingbeauty/tipingbeauty/cool-pics-for-facebook-profile-picture-for-girl-animated-photos-for-cute-girls-1540856818.jpg"]];
    beauty.frame = CGRectMake(0, 40, self.view.frame.size.width, 260);
    beauty.userInteractionEnabled = YES;
    [self.view addSubview:beauty];
    
    beauty1=[[UILabel alloc]initWithFrame:CGRectMake(50, 180, 350, 80)];
     beauty1 .text=@"BEAUTY";
    beauty1.textColor=[UIColor blueColor];
    [beauty1 setFont:[UIFont boldSystemFontOfSize:30]];
    [beauty addSubview:beauty1];
    
    slim = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"/Users/saikrishna/Developer/tipingbeauty/tipingbeauty/fitness-workout-clothing-and-women-039-s.jpg"]];
    slim.frame = CGRectMake(0, 300, self.view.frame.size.width, 320);
    slim.userInteractionEnabled = YES;
    slim.tag = 101;
    
    [self.view addSubview:slim];
    
    slim1=[[UILabel alloc]initWithFrame:CGRectMake(130, 220, 350, 80)];
    slim1 .text=@"FITNESS";
    slim1.textColor=[UIColor colorWithRed:230/255.0 green:200/255.0 blue:210/255.0 alpha:1.0];
    [slim1 setFont:[UIFont boldSystemFontOfSize:30]];
    [slim addSubview:slim1];
    

    
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(oneTap:)];
    gesture.numberOfTapsRequired = 1;
    gesture.numberOfTouchesRequired = 1;
    gesture.delegate = self;
    [beauty addGestureRecognizer:gesture];
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(oneTapped:)];
    singleTap.numberOfTapsRequired = 1;
    singleTap.numberOfTouchesRequired = 1;
    singleTap.delegate = self;
    [slim addGestureRecognizer:singleTap];
}

-(void)oneTap:(id)sender{

    SlimViewController *svc = [[SlimViewController alloc]init];
    [self.navigationController pushViewController:svc animated:NO];
    
}

-(void)oneTapped:(id)sender{
    
    BeautyViewController *bvc = [[BeautyViewController alloc]init];
    [self.navigationController pushViewController:bvc animated:NO];

    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
