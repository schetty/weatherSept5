//
//  City.m
//  Weather
//
//  Created by naomi schettini on 2016-09-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithName:(NSString *)name temperature:(int)temp image:(UIImage *)image
{
    self = [super init];
    if (self) {
        _name = name;
        _temperature = temp;
        _image = image;
    }
    return self;
}



@end
