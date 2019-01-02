//
//  SecondViewController.m
//  iOSDemoApp
//
//  Created by huaweiapm on 27/12/2018.
//  Copyright © 2018 huaweiapm. All rights reserved.
//

#import "SecondViewController.h"
#import "CrashTrace1.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)crashButtonPressed:(id)sender {
    CrashTrace1 *crashTrace1 = [[CrashTrace1 alloc]init];
    [crashTrace1 doCrash];
}

@end
