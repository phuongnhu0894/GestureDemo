//
//  TapViewController.m
//  GestureDemo
//
//  Created by student on 11/17/15.
//  Copyright © 2015 Techmaster. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()
- (void) handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer;
- (void) handleDoubleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer;
@end

@implementation TapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //initialize
    UITapGestureRecognizer *singleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTapGesture:)];
    [self.testview addGestureRecognizer:singleTapGestureRecognizer];
    
    UITapGestureRecognizer *doubleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTapGesture:)];
    [self.testview addGestureRecognizer:doubleTapGestureRecognizer];
}

- (void) handleSingleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer {
    CGFloat newWidth = 200;
//   if (self.testview.frame.size.width== 100) {
//      newWidth = 200;
//    }
    CGPoint currentCenter = self.testview.center;
    //set frame
    self.testview.frame = CGRectMake(self.testview.frame.origin.x,self.testview.frame.origin.y, newWidth,self.testview.frame.size.height);
    self.testview.center = currentCenter;
}

- (void)handleDoubleTapGesture:(UITapGestureRecognizer *)tapGestureRecognizer {
    CGSize newSize = CGSizeMake(100.0, 100.0);
   if(self.testview.frame.size.width == 100) {
        newSize.width = 200;
        newSize.height = 200;
    }
    CGPoint currentCenter = self.testview.center;
    self.testview.frame = CGRectMake(self.testview.frame.origin.x, self.testview.frame.origin.y, newSize.width, newSize.height);
    self.testview.center = currentCenter;
}
@end
