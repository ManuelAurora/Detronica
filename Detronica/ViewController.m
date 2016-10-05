//
//  ViewController.m
//  Detronica
//
//  Created by Мануэль on 05.10.16.
//  Copyright © 2016 AuroraInterplay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UILabel *counterLabel;
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;


@end

@implementation ViewController

- (IBAction)count:(UIButton *)sender {
    
    double number = [[_numberTextField text] doubleValue];
    
    int counter =  [[_counterLabel text]  isEqual: @"#"] ? 0 : [[_counterLabel text] intValue];
    
    double result = pow(number, 2);
    
    counter += 1;
    
    _numberTextField.text = [NSString stringWithFormat: @"%.2f", result];
    
    _counterLabel.text = [NSString stringWithFormat: @"%d", counter];
}

- (IBAction)restart:(UIButton *)sender {
    
    _numberTextField.text = @"";
    _counterLabel.text    = @"#";
}

@end
