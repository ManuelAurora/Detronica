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
    
    int power = 2;
    
    int number = [[_numberTextField text] intValue];
    
    int counter =  [[_counterLabel text]  isEqual: @"#"] ? 0 : [[_counterLabel text] intValue];
    
    int result = 0;
    
    counter += 1;
    
    for (int i = 0; i < power - 1; i++)
    {
        for (int j = 0; j < number; j++)
        {
            result += number;
        }
    }
    
    _resultLabel.text = [NSString stringWithFormat: @"%d", result];
    
    _counterLabel.text = [NSString stringWithFormat: @"%d", counter];
}

- (BOOL) canPerformAction:(SEL)action withSender:(id)sender {
    
    if (action == @selector(paste:) || action == @selector(copy:) || action == @selector(cut:))
        
        return NO;
    
    return [super canPerformAction:action withSender:sender];
}

- (IBAction)restart:(UIButton *)sender {
    
    _resultLabel.text     = @"Результат";
    _numberTextField.text = @"";
    _counterLabel.text    = @"#";
}

- (void) viewDidLoad {
    
    [super viewDidLoad];
    
    _numberTextField.inputAssistantItem.leadingBarButtonGroups = @[];
    _numberTextField.inputAssistantItem.trailingBarButtonGroups = @[];
    
    [_numberTextField becomeFirstResponder];
}

@end
