//
//  FirstViewController.m
//  iOSDemoApp
//
//  Created by huaweiapm on 27/12/2018.
//  Copyright © 2018 huaweiapm. All rights reserved.
//

#import "FirstViewController.h"
#import "HTTPLibs/IHttpLibRequestExec.h"
#import "HTTPLibs/NSURLSessionRequest.h"

@interface FirstViewController (){
    NSArray *HTTPLibs;
}
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    HTTPLibs = @[@"AFNetworking" ,@"SDWebImage",@"NSURLConnection",@"NSURLSession",@"NKAssetDownload"];
    self.httpLibPicker.dataSource=self;
    self.httpLibPicker.delegate=self;
//    NSURLSession *session = [NSURLSession sharedSession];
//    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:@"https://itunes.apple.com/search?term=apple&media=software"] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//        NSLog(@"%@", json);
//    }];
//    
//    [dataTask resume];
    
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
   
    NSLog(@"buttonSubmitPressed %@", [self.urlText text]);
    IHttpLibRequestExec *request =[[NSURLSessionRequest alloc] init];
    [self.resultLabel setText:@"Please wait executing Request"];
    NSString * returnVal= [NSString stringWithFormat:@"%8.0f:  %@", seconds,[request executeHTTPRequest:[self.urlText text]]];
    [self.resultLabel setText:returnVal];
}


- (IBAction)crashButton:(id)sender {
      NSLog(@"crashButton %@", [self.urlText text]);
}
@end
