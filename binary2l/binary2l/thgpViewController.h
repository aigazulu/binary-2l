//
//  thgpViewController.h
//  binary
//
//  Created by Kurt Collins on 6/27/12.
//  Copyright (c) 2012 Enole. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface thgpViewController : UIViewController
{
    
    UITextField *inputText;
    UITextField *outputText;
    UITextField *base2;
    
}

@property (nonatomic, retain) IBOutlet UITextField *inputText;
@property (nonatomic, retain) IBOutlet UITextField *outputText;
@property (nonatomic, retain) IBOutlet UITextField *base2;

-(IBAction)converter:(id)sender;
-(IBAction)removeKeyboard;
@end
