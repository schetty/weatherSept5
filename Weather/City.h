//
//  City.h
//  Weather
//
//  Created by naomi schettini on 2016-09-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic) NSString * name;
@property (nonatomic) NSString * country;
@property (nonatomic) int temperature;
//@property (nonatomic) NSDictionary * locationDetails;
@property (nonatomic) UIImage *image;
@property (nonatomic) NSArray *imageNameArray;

-(instancetype)initWithName:(NSString *)name temperature:(int)temp image:(UIImage *)image;


@end
