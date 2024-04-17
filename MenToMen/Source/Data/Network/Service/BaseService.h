//
//  BaseService.h
//  MenToMen
//
//  Created by Mercen on 4/17/24.
//

#import <Foundation/Foundation.h>

@interface BaseService : NSObject 

@property NSString *host;

- (NSString *)path;

- (NSString *)method;

@end
