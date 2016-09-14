//
//  DetailedViewController.h
//  Weather
//
//  Created by naomi schettini on 2016-09-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface DetailedViewController : UIViewController

@property (nonatomic) UIImage* weatherPic;
@property (nonatomic) UILabel* cityLabel;
@property (nonatomic) UILabel* temperatureLabel;


//-(instancetype) initWithCity:(City*)city weatherPic:(UIImage *)weatherPic cityLabel:(UILabel *)cityLabel temperatureLabel:(UILabel *)temperatureLabel andImageView:(UIImageView *)cityImageView;

@end
