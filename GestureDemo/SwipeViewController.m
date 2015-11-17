//
//  SwipeViewController.m
//  GestureDemo
//
//  Created by student on 11/17/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()
- (void) slideToRightWithGestureRecognizer: (UISwipeGestureRecognizer *)gestureRecognizer;
- (void) slideToLeftWithGestureRecognizer: (UISwipeGestureRecognizer *)gestureRecognizer;
@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISwipeGestureRecognizer *swipeRightOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightOrange.direction = UISwipeGestureRecognizerDirectionRight;
    
    UISwipeGestureRecognizer *swipeLeftOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftOrange.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.viewOrange addGestureRecognizer:swipeRightOrange];
    [self.viewOrange addGestureRecognizer:swipeLeftOrange];
    
    
    UISwipeGestureRecognizer *swipeRightBlack = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRightBlack.direction = UISwipeGestureRecognizerDirectionRight;
    [self.viewBlack addGestureRecognizer:swipeRightBlack];
    
    
    UISwipeGestureRecognizer *swipeLeftGreen = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeftGreen.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.viewGreen addGestureRecognizer:swipeLeftGreen];

}

-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.viewOrange.frame = CGRectOffset(self.viewOrange.frame, 600.0, 0.0);
        self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, 600.0, 0.0);
        self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, 600.0, 0.0);
    }];
}


-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.viewOrange.frame = CGRectOffset(self.viewOrange.frame, -600.0, 0.0);
        self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, -600.0, 0.0);
        self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, -600.0, 0.0);
    }];
}

@end
