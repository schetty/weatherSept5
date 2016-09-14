//
//  CityViewController.m
//  Weather
//
//  Created by naomi schettini on 2016-09-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"

@interface CityViewController ()

@property NSLayoutConstraint * cityImageViewHeight;
@property NSLayoutConstraint * cityImageViewWidth;
@property DetailedViewController *detailsViewController;

@property NSLayoutConstraint * detailsButtonHeight;
@property NSLayoutConstraint * detailsButtonWidth;

@end

@implementation CityViewController

- (instancetype)initWithCity:(City *)city andBackgroundColor:(UIColor *)backgroundColor
{
    self = [super init];
    if (self) {
        
        _city = city;
        _backgroundColor = backgroundColor;
    }
    return self;
}

-(void)detailsButtonTapped:(id)sender {
//        [self performSegueWithIdentifier:@"DetailsViewController" sender:sender];
    DetailedViewController *dVC = [[DetailedViewController alloc]init];
    [self.navigationController pushViewController:(dVC) animated:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    //set tab bar
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:self.city.name image:[UIImage imageNamed:@"default.png"] tag:0];
    self.tabButton = [[UIButton alloc]init];
    self.detailsButton = [[UIButton alloc] init];
    [self.detailsButton setTitle:@"See Details" forState:UIControlStateNormal];
    [self.detailsButton addTarget:self action:@selector(detailsButtonTapped:)forControlEvents:UIControlEventTouchUpInside];
    self.detailsLabel = [[UILabel alloc] init];
    self.temperatureLabel = [[UILabel alloc]init];
    self.cityImageView = [[UIImageView alloc]init];
    self.view.backgroundColor = self.backgroundColor;
    
    [self.view addSubview: self.detailsLabel];
    [self.view addSubview: self.temperatureLabel];
    [self.view addSubview: self.cityImageView];
    [self.view addSubview: self.detailsButton];
    
    self.detailsLabel.text = self.city.name;
    self.temperatureLabel.text = [NSString stringWithFormat:@"%i", self.city.temperature];
    self.cityImageView.image = self.city.image;

    
    self.detailsLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.temperatureLabel.translatesAutoresizingMaskIntoConstraints = NO;
    self.cityImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.detailsButton.translatesAutoresizingMaskIntoConstraints = NO;

    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.detailsLabel
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem: self.detailsLabel
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:0.5
                                                           constant:0.0]];
    //Temperature Labels
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.temperatureLabel
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem: self.temperatureLabel
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:0.68
                                                           constant:0.0]];
    
    
    //button
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.detailsButton
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem: self.detailsButton
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:0.80
                                                           constant:0.0]];
    
    
    NSLayoutConstraint *detailsButtonHeight = [NSLayoutConstraint
                                               constraintWithItem:self.detailsButton
                                               attribute:NSLayoutAttributeHeight
                                               relatedBy:NSLayoutRelationEqual
                                               toItem:nil
                                               attribute:NSLayoutAttributeNotAnAttribute
                                               multiplier:1.0
                                               constant:50.0];
    
    NSLayoutConstraint *detailsButtonWidth = [NSLayoutConstraint
                                              constraintWithItem:self.detailsButton
                                              attribute:NSLayoutAttributeWidth
                                              relatedBy:NSLayoutRelationEqual
                                              toItem:nil
                                              attribute:NSLayoutAttributeNotAnAttribute
                                              multiplier:1.0
                                              constant:90.0];
    
    
    //city picture
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.cityImageView
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem: self.cityImageView
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.5
                                                           constant:0.0]];
    
    NSLayoutConstraint *cityImageViewHeight = [NSLayoutConstraint
                                               constraintWithItem:self.cityImageView
                                               attribute:NSLayoutAttributeHeight
                                               relatedBy:NSLayoutRelationEqual
                                               toItem:nil
                                               attribute:NSLayoutAttributeNotAnAttribute
                                               multiplier:1.0
                                               constant:self.city.image.size.height*0.4];
    
    NSLayoutConstraint *cityImageViewWidth = [NSLayoutConstraint
                                               constraintWithItem:self.cityImageView
                                               attribute:NSLayoutAttributeWidth
                                               relatedBy:NSLayoutRelationEqual
                                              toItem:nil
                                              attribute:NSLayoutAttributeNotAnAttribute
                                               multiplier:1.0
                                               constant:self.city.image.size.width*0.4];
    
    
    [self.view addConstraint:cityImageViewWidth];
    [self.view addConstraint:cityImageViewHeight];
    
    self.cityImageViewHeight = cityImageViewHeight;
    self.cityImageViewWidth = cityImageViewWidth;
    
    [self.view setNeedsUpdateConstraints];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
