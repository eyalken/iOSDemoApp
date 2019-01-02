//
//  CrashTrace1.m
//  iOSDemoApp
//
//  Created by huaweiapm on 02/01/2019.
//  Copyright © 2019 huaweiapm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CrashTrace1.h"


@implementation CrashTrace1
- (void) doCrash{
    int i =10;
    int y =0;
    //BOOM - Crash
    i=i/y;
    
}
@end
