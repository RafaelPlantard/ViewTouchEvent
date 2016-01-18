//
//  ViewController.m
//  ViewTouchEvent
//
//  Created by Rafael Ferreira on 1/18/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import "VTEViewController.h"
#import "VTECircleView.h"

@interface VTEViewController ()

@end

@implementation VTEViewController

#pragma mark - UIView methods

- (void)loadView {
    VTECircleView *circlesView = [VTECircleView new];
    
    circlesView.backgroundColor = [UIColor whiteColor];
    
    self.view = circlesView;
}

@end