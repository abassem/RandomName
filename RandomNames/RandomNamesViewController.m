//
//  ViewController.m
//  RandomNames
//
//  Created by Abdo Assem on 3/31/16.
//  Copyright © 2016 abdoassem. All rights reserved.
//

#import "RandomNamesViewController.h"

@interface RandomNamesViewController ()
@property (weak, nonatomic) IBOutlet UILabel *groupOne;
@property (weak, nonatomic) IBOutlet UILabel *groupTwo;
@property (weak, nonatomic) IBOutlet UILabel *groupThree;
@property (weak, nonatomic) IBOutlet UITextView *outputTextView;
@property (weak, nonatomic) IBOutlet UITextView *output2;
@property (weak, nonatomic) IBOutlet UITextView *output3;

@end



@implementation RandomNamesViewController
- (IBAction)onButtonPress:(id)sender
{
    NSMutableArray *people = [[NSMutableArray alloc] init];
    [people addObject:@"Abdo"];
    [people addObject:@"Wilson"];
    [people addObject:@"Micheal"];
    [people addObject:@"Daniel"];
    [people addObject:@"Ming Xiang"];
    [people addObject:@"Jeremy"];
    [people addObject:@"Faris"];
    
    for (int i = 0; i < 7; i++)
    {
        int n =(arc4random() % [people count]);
        [people exchangeObjectAtIndex:i withObjectAtIndex:n];
        self.outputTextView.text = [people componentsJoinedByString:@"\n"];
        
        NSString *a = [people objectAtIndex:1];
        
        self.output2.text = *a;
    //    NSLog(@"%@",a);
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
