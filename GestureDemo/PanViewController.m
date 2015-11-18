//
//  PanViewController.m
//  GestureDemo
//
//  Created by student on 11/17/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()
-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer;
@end

@implementation PanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveViewWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:panGestureRecognizer];
}

-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer{
    CGPoint touchLocation = [panGestureRecognizer locationInView:self.view];
    
    self.testView.center = touchLocation;
    CGPoint velocity = [panGestureRecognizer velocityInView:self.view];
    self.horizontalVelocityLabel.text = [NSString stringWithFormat:@"%.2f points/sec", velocity.x];
    self.verticalVelocityLabel.text = [NSString stringWithFormat:@"%.2f points/sec", velocity.y];
    
}

@end
