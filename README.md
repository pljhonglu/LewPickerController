# LewPickerController
方便好用的弹出 UIPickerView/UIDatePicker
	
![效果图](https://github.com/pljhonglu/LewPickerController/blob/master/images/default.gif)

## 使用方法

```
UIPickerView *pickerView = [[UIPickerView alloc]init];
pickerView.delegate = self;
pickerView.dataSource = self;
LewPickerController *pickerController = [[LewPickerController alloc]initWithDelegate:self];
pickerController.pickerView = pickerView;
pickerController.titleLabel.text = @"请选择";
[pickerController showInView:self.view];
```

## License | 许可

This code is distributed under the terms of the MIT license.  
代码使用 MIT license 许可发布.


