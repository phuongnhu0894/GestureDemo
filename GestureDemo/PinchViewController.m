//
//  PinchViewController.m
//  GestureDemo
//
//  Created by student on 11/17/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()
- (void) handlePinchWithGestureRecognizer: (UIPinchGestureRecognizer *) pinchGestureRecognizer;
@end

@implementation PinchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIPinchGestureRecognizer *pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinchWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:pinchGestureRecognizer];
}

- (void) handlePinchWithGestureRecognizer:(UIPinchGestureRecognizer *)pinchGestureRecognizer {
    self.testView.transform = CGAffineTransformScale(self.testView.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale);
    pinchGestureRecognizer.scale = 1;
}


@end
