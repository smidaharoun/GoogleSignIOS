//
//  AppDelegate.h
//  google
//
//  Created by odc on 24/08/16.
//  Copyright © 2016 Haroun SMIDA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Google/SignIn.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, GIDSignInDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

