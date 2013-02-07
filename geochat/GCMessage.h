//
//  GCMessage.h
//  geochat
//
//  Created by Adrian Gzz on 05/02/13.
//  Copyright (c) 2013 Adrian Gzz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GCMessage : NSObject

@property (strong, nonatomic) NSString *message;
@property (strong, nonatomic) NSString *user;
@property (strong, nonatomic) NSDate *created_at;

-(id)initWithDictionary:(NSDictionary *)dictionary;
-(id)initWithMessage:(NSString *)message user:(NSString *)user;
-(NSDictionary *)toDictionary;

@end
