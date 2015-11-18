//
//  PanViewController.h
//  GestureDemo
//
//  Created by student on 11/17/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PanViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *testView;
@property (weak, nonatomic) IBOutlet UILabel *horizontalVelocityLabel;
@property (weak, nonatomic) IBOutlet UILabel *verticalVelocityLabel;
@end
