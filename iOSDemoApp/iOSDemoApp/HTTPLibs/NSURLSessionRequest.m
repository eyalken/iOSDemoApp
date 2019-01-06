//
//  NSURLSessionRequest.m
//  iOSDemoApp
//
//  Created by huaweiapm on 03/01/2019.
//  Copyright © 2019 huaweiapm. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSURLSessionRequest.h"

@implementation NSURLSessionRequest

- (NSString *)executeHTTPRequest :(NSString *)request{
    __block NSString *retVal=nil;
    NSLog(@"request is %@",request);
    NSURL *url = [NSURL URLWithString:request];
    dispatch_semaphore_t    sem;
    sem = dispatch_semaphore_create(0);
    
    [[[NSURLSession sharedSession]
              dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                   if (error) {
                      NSLog(@"dataTaskWithRequest error: %@", error);
                      retVal= @"Error in invoking URL";
                  }else if ([response isKindOfClass:[NSHTTPURLResponse class]]) {
                  // handle HTTP errors here
                      
                      
                      NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse*)response;
                      NSInteger statusCode = [httpResponse statusCode];
                      NSDictionary* headers = [httpResponse allHeaderFields];
                      NSString *value=headers[@"Content-Length"];
//                      NSArray *keys = [headers allKeys];
//                      for( NSString *key in keys){
//                          NSLog(@"key: %@ : %@", key, [headers valueForKey:key]);
//                      }
                      
                      
                      retVal = [NSString stringWithFormat:@"Status code %ld Length is %@",statusCode,value] ;
                  }else{
                      retVal= @"Unknown error";
                  }
                  dispatch_semaphore_signal(sem);
              }] resume];
    dispatch_semaphore_wait(sem, DISPATCH_TIME_FOREVER);
    return retVal;
}

@end
