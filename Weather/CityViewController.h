//
//  CityViewController.h
//  Weather
//
//  Created by naomi schettini on 2016-09-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityViewController : UIViewController

@property (nonatomic) UIColor* backgroundColor;
@property (nonatomic) City *city;
@property UIButton* tabButton;
@property UILabel* detailsLabel;
@property UIButton* detailsButton;
@property (nonatomic) UIImageView *cityImageView;
@property UILabel* temperatureLabel;

//initialize with city object
-(instancetype) initWithCity: (City *)city andBackgroundColor: (UIColor *) backgroundColor;

-(void)detailsButtonTapped:(id)sender;


@end
