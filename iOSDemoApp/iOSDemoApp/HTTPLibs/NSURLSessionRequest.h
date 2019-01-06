//
//  NSURLSessionRequest.h
//  iOSDemoApp
//
//  Created by huaweiapm on 02/01/2019.
//  Copyright © 2019 huaweiapm. All rights reserved.
//

#ifndef NSURLSessionRequest_h
#define NSURLSessionRequest_h
#import "IHttpLibRequestExec.h"

@interface NSURLSessionRequest:IHttpLibRequestExec
    - (NSString *)executeHTTPRequest :(NSString *)request;
@end


#endif /* NSURLSessionRequest_h */
