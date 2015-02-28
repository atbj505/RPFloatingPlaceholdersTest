//
//  ViewController.m
//  RPFloatingPlaceholdersTest
//
//  Created by 杨启晖 on 15/2/28.
//  Copyright (c) 2015年 NationSky. All rights reserved.
//

#import "ViewController.h"
#import "RPFloatingPlaceholderTextField.h"
#import "RPFloatingPlaceholderTextView.h"

@interface ViewController (){
    RPFloatingPlaceholderTextField *_flTextField;
    RPFloatingPlaceholderTextView *_flTextView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addTextField];
    [self addTextView];
}
- (void)addTextField{
    CGRect frame = CGRectMake(20.f, 20.f, 273.f, 30.f);
    _flTextField = [[RPFloatingPlaceholderTextField alloc] initWithFrame:frame];
    _flTextField.floatingLabelActiveTextColor = [UIColor blueColor];
    _flTextField.floatingLabelInactiveTextColor = [UIColor grayColor];
    _flTextField.placeholder = @"This is a single-line text field";
    _flTextField.font = [UIFont fontWithName:@"Helvetica" size:16.f];
    _flTextField.animationDirection = RPFloatingPlaceholderAnimateUpward;
    [self.view addSubview:_flTextField];
}
- (void)addTextView{
    CGRect frame = CGRectMake(20.f, 80.f, 273.f, 60.f);
    _flTextView = [[RPFloatingPlaceholderTextView alloc]initWithFrame:frame];
    _flTextView.floatingLabelActiveTextColor = [UIColor blueColor];
    _flTextView.floatingLabelInactiveTextColor = [UIColor grayColor];
    _flTextView.placeholder = @"This is a text view";
    _flTextView.font = [UIFont fontWithName:@"Helvetica" size:16.f];
    _flTextView.animationDirection = RPFloatingPlaceholderAnimateUpward;
    [self.view addSubview:_flTextView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    if (_flTextField.isEditing) {
        [_flTextField resignFirstResponder];
    }
    if (_flTextView.isEditable) {
        [_flTextView resignFirstResponder];
    }
}
@end
