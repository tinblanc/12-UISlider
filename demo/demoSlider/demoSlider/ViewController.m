//
//  ViewController.m
//  demoSlider
//
//  Created by Tin Blanc on 3/16/16.
//  Copyright © 2016 Tin Blanc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self.slider setThumbImage:[self darkThumb] forState:UIControlStateNormal];
    [self.slider setMinimumValueImage:[self sadImage]];
    [self.slider setMaximumValueImage:[self happyImage]];
    
    //UIEdgeInsets inset = UIEdgeInsetsMake(0, 0, 1, 10);
    //UIImage* maxTrack = [[UIImage imageNamed:@"SliderTrack"] resizableImageWithCapInsets:inset];
    
    [self.slider setMaximumTrackImage:[self darkTrack] forState:UIControlStateNormal];
    
    [self.slider setMinimumTrackImage:[self darkTrack] forState:UIControlStateNormal];
    self.slider.minimumValue = 0;
    self.slider.maximumValue = 100;
    self.slider.value = 0;
    
    NSString* valueSlider = [NSString stringWithFormat:@"%2.1f", self.slider.value];
    self.label.text =valueSlider;
    
    
    
//    UIGraphicsBeginImageContext(self.view.frame.size);
//    [[UIImage imageNamed:@"background.png"] drawInRect:self.view.bounds]; // bound : giới hạn
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    
//    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    
}
- (IBAction)changeValueSlider:(id)sender {
    NSString* valueSlider = [NSString stringWithFormat:@"%2.1f", self.slider.value];
    self.label.text = valueSlider;
}


-(UIImage*) darkTrack
{
    return [UIImage imageNamed:@"SliderTrack"] ;
}

- (UIImage *) darkThumb
{
    return [UIImage imageNamed:@"SliderThumb"];
}

- (UIImage *) sadImage
{
    return [UIImage imageNamed:@"MoodSad"];
}

- (UIImage *) happyImage
{
    return [UIImage imageNamed:@"MoodHappy"];
}



@end
