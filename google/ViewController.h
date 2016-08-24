//
//  ViewController.h
//  google
//
//  Created by odc on 24/08/16.
//  Copyright © 2016 Haroun SMIDA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Google/SignIn.h>

@interface ViewController : UIViewController <GIDSignInUIDelegate, GIDSignInDelegate>

@property(weak, nonatomic) IBOutlet GIDSignInButton *signInButton;



@end

