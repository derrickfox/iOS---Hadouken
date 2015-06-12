//
//  ViewController.h
//  Hadouken
//
//  Created by Derrick Fox on 1/18/15.
//  Copyright (c) 2015 Derrick Fox. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController
{
    SystemSoundID PlaySoundID;
    SystemSoundID PlaySoundID2;


}
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

- (IBAction)hadoukenButton:(id)sender;

@end

