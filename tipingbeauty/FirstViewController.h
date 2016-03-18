//
//  FirstViewController.h
//  tipingbeauty
//
//  Created by saikrishna on 16/03/16.
//  Copyright © 2016 saikrishna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *color;
@property (strong, nonatomic) IBOutlet UIView *height;
@property (strong, nonatomic) IBOutlet UIView *weaight;
- (IBAction)male:(id)sender;
- (IBAction)female:(id)sender;

- (IBAction)dailytips:(id)sender;

@end

