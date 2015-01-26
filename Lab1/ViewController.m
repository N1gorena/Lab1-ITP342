//
//  ViewController.m
//  Lab1
//
//  Created by Nicky Guangorena on 1/21/15.
//  Copyright (c) 2015 Nicky Guangorena. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *responseLabel;
@property (weak, nonatomic) IBOutlet UISlider *happySadSlider;
@property (weak, nonatomic) IBOutlet UITextField *userNameInputField;
@property (weak, nonatomic) IBOutlet UIButton *tragedyButton;
@property (weak, nonatomic) IBOutlet UIButton *comedyButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)submitNameRemoveInputButton:(id)sender {
    self.userNameInputField.hidden = true;
    [sender setHidden:YES];
}
- (IBAction)fullComedyClick:(id)sender {
    NSString* userName = self.userNameInputField.text;
    if(![userName  isEqual: @""]){
        self.responseLabel.text = [@"Glad to know your chipper, " stringByAppendingString:userName];
    }
    else
        self.responseLabel.text = @"Please Input Your Name Above!";

}
- (IBAction)fullTragedyClick:(id)sender {
    NSString* userName = self.userNameInputField.text;
    if(![userName  isEqual: @""]){
        self.responseLabel.text = [@"There's always bacon " stringByAppendingString:userName];
    }
    else
        self.responseLabel.text = @"Please Input Your Name Above!";

}
- (IBAction)nameInputDone:(id)sender {
    [sender resignFirstResponder];
}
- (IBAction)sliderBeingSlid:(id)sender {
    NSString* userName = self.userNameInputField.text;
    if(![userName  isEqual: @""]){
        if(self.happySadSlider.value >= 0.0f && self.happySadSlider.value <= 0.25f){
            self.responseLabel.text = [@"Are you sure your not Pharell, " stringByAppendingString:userName];
        }
        else if(self.happySadSlider.value > 0.25f && self.happySadSlider.value <= 0.50f){
            self.responseLabel.text = [@"I'd say your pretty happy " stringByAppendingString:userName];
        }
        else if(self.happySadSlider.value > 0.50f && self.happySadSlider.value <= 0.75f){
            self.responseLabel.text = [@"You got a unique outlook eh " stringByAppendingString:userName];
        }
        else if(self.happySadSlider.value > 0.75f && self.happySadSlider.value <= 1.0f){
            self.responseLabel.text = [@"Without tragedy, can there be comedy, " stringByAppendingString:userName];
        }
    }
    else{
        self.responseLabel.text = @"Please Input Your Name Above!";
    }
    
}

@end
