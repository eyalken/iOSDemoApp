//
//  FirstViewController.h
//  iOSDemoApp
//
//  Created by huaweiapm on 27/12/2018.
//  Copyright © 2018 huaweiapm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *urlText;

@property (weak, nonatomic) IBOutlet UIPickerView *httpLibPicker;
- (IBAction)crashButton:(id)sender;

@end

