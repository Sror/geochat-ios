//
//  Conversation.m
//  geochat
//
//  Created by Adrian Gzz on 05/02/13.
//  Copyright (c) 2013 Adrian Gzz. All rights reserved.
//

#import "GCConversation.h"
#import "GCMessage.h"

@implementation GCConversation

@synthesize messages = _messages;
@synthesize draft = _draft;

-(id) initWithPlaceId:(NSString *)place_id {
    self = [super init];
    
    if (self) {
    }
    return self;
}

-(void) initializeMessagesWithMessagesArray:(NSArray *)messages{
//    NSString *date = @"2011-01-21T12:26:47-05:00";
//    
//    
//    date = [date stringByReplacingOccurrencesOfString:@":"
//                                                 withString:@""
//                                                    options:0
//                                                      range:NSMakeRange([date length] - 5,5)];
//    
//    
//    NSArray *messages = @[
//                         @{
//                             @"user" : @"Adrian",
//                             @"message" : @"Hola que hace?",
//                             @"created_at" : date
//                         },
//                         @{
//                             @"user" : @"Adrian",
//                             @"message" : @"ola kiubo",
//                             @"created_at" : date
//                         },
//                         @{
//                             @"user" : @"Adrian",
//                             @"message" : @"Hola que no hace?",
//                             @"created_at" : date
//                         },
//                         @{
//                             @"user" : @"Adrian",
//                             @"message" : @"Hola que hace?",
//                             @"created_at" : date
//                         },
//                         @{
//                             @"user" : @"Adrian",
//                             @"message" : @"ola kiubo",
//                             @"created_at" : date
//                         },
//                         @{
//                             @"user" : @"Adrian",
//                             @"message" : @"Hola que no hace?",
//                             @"created_at" : date
//                         },
//                         @{
//                             @"user" : @"Adrian",
//                             @"message" : @"Hola que hace?",
//                             @"created_at" : date
//                         },
//                         @{
//                             @"user" : @"Adrian",
//                             @"message" : @"ola kiubo",
//                             @"created_at" : date
//                         },
//                         @{
//                             @"user" : @"Adrian",
//                             @"message" : @"Hola que no hace?",
//                             @"created_at" : date
//                         },
//                         @{
//                             @"user" : @"Adrian",
//                             @"message" : @"Ultimo!!!",
//                             @"created_at" : date
//                         },
//                         ];
//    
    NSMutableArray *messages_objs = [NSMutableArray array];
    
    for (NSDictionary *message in messages) {
        [messages_objs addObject:[[GCMessage alloc] initWithDictionary:message]];
    }
    
    self.messages = messages_objs;
}

-(void)addMessage:(GCMessage *)message{
    [self.messages addObject:message];
}

@end
