//
//  AuthService.m
//  MenToMen
//
//  Created by Mercen on 4/17/24.
//

#import "AuthService.h"

typedef enum {
    LOGIN
} Endpoint;

@interface AuthService ()

@end

@implementation AuthService

Endpoint endpoint;
NSString *host = @"auth";

- (NSString *)path {
    switch(endpoint) {
        case LOGIN:
            return @"/login";
            break;
    }
}

- (NSString *)method {
    switch(endpoint) {
        case LOGIN:
            return @"POST";
            break;
    }
}

@end
