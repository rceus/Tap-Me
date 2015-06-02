//
//  ViewController.h
//  Tap Me
//
//  Created by Rishabh Jain on 6/2/15.
//  Copyright (c) 2015 Rishabh Jain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate> {
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
}
- (IBAction)buttonPressed;
@end