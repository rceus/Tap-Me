//
//  ViewController.m
//  Tap Me
//
//  Created by Rishabh Jain on 6/2/15.
//  Copyright (c) 2015 Rishabh Jain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    [self setupGame];
}

- (void)setupGame{
    seconds = 30;
    count = 0;
    
    timerLabel.text = [NSString stringWithFormat:@"Time: %li", (long)seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%li", (long)count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}

- (void)subtractTime{
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %li", (long)seconds];
    
    if (seconds == 0) {
        [timer invalidate];
    
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Time's up!"
                                                        message:[NSString stringWithFormat: @"You scored %ld points!", (long)count]
                                                       delegate: self
                                              cancelButtonTitle:@"Play Again" otherButtonTitles: nil];
        [alert show];
    }
}

- (IBAction)buttonPressed {
    count++;
    NSLog(@"Pressed!");
    scoreLabel.text = [NSString stringWithFormat:@"Score: %ld", (long)count];
}

@end


