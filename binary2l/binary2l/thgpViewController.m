//
//  thgpViewController.m
//  binary
//
//  Created by Kurt Collins on 6/27/12.
//  Copyright (c) 2012 Enole. All rights reserved.
//

#import "thgpViewController.h"

@interface thgpViewController ()

@end

@implementation thgpViewController

@synthesize inputText, outputText;

@synthesize base2;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}




/* function converter takes base 2-9 then converts into binary */
-(IBAction)converter:(id)sender
{
    NSString *output;
    
    int I;
    int Q =  [inputText.text intValue];
    int remainder;
    int B[20];
    int base;
    
    // base= [selected intValue];
    base = [base2.text intValue];
    
    NSLog (@"Input Text = %@", inputText.text);
    NSLog (@"Base Input Value = %@", base2.text);
    
    NSLog(@"Input Number = %d", Q);
    
    NSLog(@"base= %i",base);
    

    for (I = 0; I < 20; I = I + 1) {
        B[I] = 0;
    }
    
    I = 0;
    
    while (Q > 0) {
        remainder = Q % base;
        B[I] = remainder ;
        Q = Q / base; 
        I = I + 1;
    }
    output = [NSString stringWithFormat:@"%d%d%d%d %d%d%d%d %d%d%d%d %d%d%d%d %d%d%d%d", B[19], B[18], B[17], B[16], B[15], B[14], B[13], B[12], B[11], B[10], B[9], B[8], B[7], B[6], B[5], B[4], B[3], B[2], B[1], B[0]];
    NSLog(@"Binary Number =  %d%d%d%d %d%d%d%d %d%d%d%d", B[11], B[10], B[9], B[8], B[7], B[6], B[5], B[4], B[3], B[2], B[1], B[0]);
    
    outputText.text = output;
}

-(IBAction)removeKeyboard{
    [inputText resignFirstResponder];    
    
}

@end


