//
//  RotationViewController.m
//  GestureDemo
//
//  Created by student on 11/17/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()
- (void) handleRotationWithGestureRecognizer: (UIRotationGestureRecognizer *) rotationGestureRecognizer;
@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIRotationGestureRecognizer *rotationGestureRecognizer = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotationWithGestureRecognizer:)];
    [self.testView addGestureRecognizer:rotationGestureRecognizer];
}

- (void) handleRotationWithGestureRecognizer:(UIRotationGestureRecognizer *)rotationGestureRecognizer {
    self.testView.transform = CGAffineTransformRotate(self.testView.transform, rotationGestureRecognizer.rotation);
    rotationGestureRecognizer.rotation = 0.0;
}




@end
