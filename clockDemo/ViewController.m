//
//  ViewController.m
//  clockDemo
//
//  Created by shmily on 2021/7/12.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labAnswer;
@property (weak, nonatomic) IBOutlet UITextField *textfieldHour;
@property (weak, nonatomic) IBOutlet UITextField *textFieldSecond;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)btnAction:(id)sender {
    float hours = [self.textfieldHour.text floatValue];
    float seconds = [self.textFieldSecond.text floatValue];
    
//    float num = fabs(6*seconds-30*hours-seconds/2);
    float difS = seconds/60*360;
    float difH = hours/12*360;
    float difHS = seconds/60*30;
    float num = fabs(difS - difH - difHS);
    NSLog(@"---seconds: %f---",difS);
    NSLog(@"---hours: %f---",difH);
    NSLog(@"---dif: %f---",difHS);
    if (num >180){
        num = 360-num;
    }
    NSLog(@"---ans: %f---",num);

    self.labAnswer.text = [NSString stringWithFormat:@"%.2f",num];

}


@end
