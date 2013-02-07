//
//  AppDelegate.h
//  geochat
//
//  Created by Adrian Gzz on 05/02/13.
//  Copyright (c) 2013 Adrian Gzz. All rights reserved.
//
#define GC_APP_DELEGATE() ((GCAppDelegate *)[[UIApplication sharedApplication] delegate])

#define HOST @"geochatios.jit.su"
//#define HOST @"localhost"

//#define PORT 3000
#define PORT 80


#import <UIKit/UIKit.h>

@class GCLoginViewController;
@class GCNavigationController;
@class BZFoursquare;

@interface GCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) GCLoginViewController *loginViewController;
@property (strong, nonatomic) GCNavigationController *navigationController;

-(void) saveAccessToken:(NSString *)token;
-(NSString *) readAccessToken;
-(BZFoursquare *) getFoursquareClient;

@end
