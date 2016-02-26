//
//  LewPickerController.h
//  NetEaseLocalActivities
//
//  Created by pljhonglu on 16/2/19.
//  Copyright © 2016年 netease. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol LewPickerControllerDelegate;

@interface LewPickerController : UIView
@property(nonatomic, strong, readonly) UILabel * titleLabel;
@property (nonatomic, strong)__kindof UIView *pickerView;// UIPickerView or UIDatePicker
@property(nonatomic, weak) id<LewPickerControllerDelegate> delegate;

- (id)initWithDelegate:(id<LewPickerControllerDelegate>)delegate;

- (void)showInView:(UIView*)target;

- (void)setToolbarStyle:(UIBarStyle)barStyle;
@end

#pragma mark -

@protocol LewPickerControllerDelegate <NSObject>

@optional
- (BOOL)lewPickerControllerShouldOKButtonPressed:(LewPickerController *)pickerController;
- (void)lewPickerControllerDidOKButtonPressed:(LewPickerController *)pickerController;
- (void)lewPickerControllerDidCancelButtonPressed:(LewPickerController *)pickerController;
@end
NS_ASSUME_NONNULL_END