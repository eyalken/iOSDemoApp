//
//  FirstViewController.m
//  iOSDemoApp
//
//  Created by huaweiapm on 27/12/2018.
//  Copyright © 2018 huaweiapm. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController (){
    NSArray *HTTPLibs;
}
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    HTTPLibs = @[@"AFNetworking" ,@"SDWebImage"];
    self.httpLibPicker.dataSource=self;
    self.httpLibPicker.delegate=self;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return HTTPLibs.count;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return HTTPLibs[row];
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
- (IBAction)buttonSubmitPressed:(UIButton *)sender {
    NSTimeInterval seconds = [[NSDate date] timeIntervalSince1970];
   
    
    [self.resultLabel setText:[NSString stringWithFormat:@"%8.0f:  HTTP Status Code  is %d", seconds,200]];
}

@end
