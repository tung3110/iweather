//
//  ViewController.m
//  iWeather
//
//  Created by Liên Thái on 10/6/17.
//  Copyright © 2017 TTHD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UIButton *temperature;
@property (weak, nonatomic) IBOutlet UIImageView *weatherIcon;
@property (weak, nonatomic) IBOutlet UILabel *quote;

@end

@implementation ViewController
{
    NSArray* quotes;
    NSArray* locations;
    NSArray* weatherIcons;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    quotes = @[@"Mot con ngua dau cau tau bo co",@"Neu phai lua chon lan nua toi van se chon vo hien tai",@"Khong yeu dung noi loi cay dang"];
    weatherIcons = @[@"Rain",@"Hot",@"Cool"];
    locations = @[@"Ha Noi - Viet Nam",@"Hue - Viet Nam ",@"Sai gon - Viet Nam"];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)Update:(id)sender {
    int quoteIndex = arc4random_uniform(quotes.count);
    _quote.text = quotes[quoteIndex];
    int locationIndex = arc4random_uniform(locations.count);
    _location.text = locations[locationIndex];
    int weatherIndex = arc4random_uniform(weatherIcons.count);
    _weatherIcon.image = [UIImage imageNamed:weatherIcons[weatherIndex]];
    NSString* string  =  [NSString stringWithFormat:@"%2.1f",[self getTemprature]];
    [self.temperature setTitle:string forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (float) getTemprature{
    return 14.0+arc4random_uniform(18);
}

@end
