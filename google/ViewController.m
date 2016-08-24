//
//  ViewController.m
//  google
//
//  Created by odc on 24/08/16.
//  Copyright © 2016 Haroun SMIDA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [GIDSignIn sharedInstance].uiDelegate = self;
    [GIDSignIn sharedInstance].delegate = self;
    [[GIDSignIn sharedInstance] signInSilently];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)signIn:(GIDSignIn *)signIn
didSignInForUser:(GIDGoogleUser *)user
     withError:(NSError *)error {
    // Perform any operations on signed in user here.
    if (user) {
        NSString *userId = user.userID;                  // For client-side use only!
        NSString *fullName = user.profile.name;
        NSString *givenName = user.profile.givenName;
        NSString *familyName = user.profile.familyName;
        NSString *email = user.profile.email;
        // ...
        
        NSLog(@"USER ID: %@", userId);
        NSLog(@"FULL NAME: %@", fullName);
        NSLog(@"GIVEN NAME: %@", givenName);
        NSLog(@"FAMILY NAME: %@", familyName);
        NSLog(@"EMAIL: %@", email);

    }
    
}

@end
