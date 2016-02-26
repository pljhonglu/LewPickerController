//
//  ViewController.m
//  LewPickerControllerDemo
//
//  Created by pljhonglu on 16/2/26.
//  Copyright © 2016年 pljhonglu. All rights reserved.
//

#import "ViewController.h"
#import "LewPickerController.h"

@interface ViewController ()<UIPickerViewDelegate, UIPickerViewDataSource, LewPickerControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - action
- (IBAction)showPickerViewAction:(id)sender{
    UIPickerView *pickerView = [[UIPickerView alloc]init];
    pickerView.delegate = self;
    pickerView.dataSource = self;
    LewPickerController *pickerController = [[LewPickerController alloc]initWithDelegate:self];
    pickerController.pickerView = pickerView;
    pickerController.titleLabel.text = @"请选择";
    [pickerController showInView:self.view];
}

- (IBAction)showDatePickerAction:(id)sender{
    UIDatePicker *datePicker = [[UIDatePicker alloc]init];
    LewPickerController *pickerController = [[LewPickerController alloc]initWithDelegate:self];
    pickerController.pickerView = datePicker;
    pickerController.titleLabel.text = @"请选择";
    [pickerController showInView:self.view];
    
}

#pragma mark - UIPickerViewDelegate,UIPickerViewDataSource

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return 10;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return @"测试";
}

#pragma mark - LewPickerControllerDelegate
- (BOOL)lewPickerControllerShouldOKButtonPressed:(LewPickerController *)pickerController{
    return  YES;
}

- (void)lewPickerControllerDidOKButtonPressed:(LewPickerController *)pickerController{
    NSLog(@"OK");
}

- (void)lewPickerControllerDidCancelButtonPressed:(LewPickerController *)pickerController{
    NSLog(@"cancel");
}
@end
