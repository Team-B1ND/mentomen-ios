//
//  BaseService.m
//  MenToMen
//
//  Created by Mercen on 4/17/24.
//

#import "BaseService.h"
#define API @"http://43.201.193.60/"

@interface BaseService ()

@end

@implementation BaseService

- (NSString *)method {
    return @"";
}

- (NSString *)path {
    return @"";
}

- (NSURLRequest *)urlRequest {
    NSURL *url = [NSURL URLWithString:API];
    [url URLByAppendingPathComponent:self.host];
    [url URLByAppendingPathComponent:[self path]];
    NSMutableURLRequest *urlRequest = [[NSMutableURLRequest alloc] initWithURL: url];
    [urlRequest setHTTPMethod:[self method]];
    [urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    return urlRequest;
}

@end
