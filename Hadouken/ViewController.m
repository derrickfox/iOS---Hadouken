//
//  ViewController.m
//  Hadouken
//
//  Created by Derrick Fox on 1/18/15.
//  Copyright (c) 2015 Derrick Fox. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)hadoukenButton:(id)sender {
    
    AudioServicesPlaySystemSound(PlaySoundID);
}
- (IBAction)uppercutButton:(id)sender {
    AudioServicesPlaySystemSound(PlaySoundID2);
}

- (void)viewDidLoad {
    NSURL *SoundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"hadouken" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) SoundURL, &PlaySoundID);
    
    NSURL *SoundURL2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"tigeruppercut" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) SoundURL2, &PlaySoundID2);
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
