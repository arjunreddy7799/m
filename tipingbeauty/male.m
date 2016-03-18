//
//  male.m
//  tipingbeauty
//
//  Created by saikrishna on 16/03/16.
//  Copyright © 2016 saikrishna. All rights reserved.
//

#import "male.h"
#import "WeeklyViewController.h"
#import "DailyViewController.h"

@interface male ()

@end

@implementation male{
    NSArray *array;
    UIButton *daily;
    UIButton *weekly;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationBar *navigationBar = self.navigationController.navigationBar;
    
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"NavigationBarBackground"]
                       forBarPosition:UIBarPositionAny
                           barMetrics:UIBarMetricsCompact];
    
    [navigationBar setShadowImage:[UIImage new]];
    
    self.title=[NSLocalizedString(@"malehandsome", nil) uppercaseString];
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    array=[[NSArray alloc] initWithObjects:@"HandSome",@"HairTheraphy",@"Excesize", nil];
    
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc] init];
    _collectionView=[[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    [_collectionView setDataSource:self];
    [_collectionView setDelegate:self];
    
    [_collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    [_collectionView setBackgroundColor:[UIColor lightGrayColor]];
    
    [self.view addSubview:_collectionView];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return array.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    cell.backgroundColor=[UIColor brownColor];
    
    UILabel *label = (UILabel*)[cell.contentView viewWithTag:21];
    
    if (label==nil) {
        label=[[UILabel alloc] initWithFrame:CGRectMake(30, 10, 200, 60)];
        label.tag = 21;
        [cell.contentView addSubview:label];
    }
    
    label.text = [array objectAtIndex:indexPath.row];
    
    daily = (UIButton*)[cell.contentView viewWithTag:100];
    if (!daily) {
        daily = [[UIButton alloc]initWithFrame:CGRectMake(40, 90, 200, 20)];
        daily.tag = 100;
        [daily setTitle:@"Daily" forState:UIControlStateNormal];
        [daily addTarget:self action:@selector(ButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:daily];
    }
    
    weekly = (UIButton*)[cell.contentView viewWithTag:101];
    if (!weekly) {
        weekly = [[UIButton alloc]initWithFrame:CGRectMake(40, 130, 200, 20)];
        weekly.tag = 101;
        [weekly setTitle:@"Weekly" forState:UIControlStateNormal];
        [weekly addTarget:self action:@selector(ButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:weekly];
    }
    
    
    return cell;
}

-(void)ButtonPressed:(id)sender{
    
    if(!daily){
        
        DailyViewController *dvc = [DailyViewController new];
        [self.navigationController pushViewController:dvc animated:NO];
        
    }
    else{
        
        WeeklyViewController *wvc = [WeeklyViewController new];
        [self.navigationController pushViewController:wvc animated:NO];
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(300, 190);
}


    



        // Do any additional setup after loading the view.


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
