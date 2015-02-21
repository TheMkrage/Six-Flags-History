//
//  ride.m
//  Six Flags History
//
//  Created by Matthew Krager on 12/28/14.
//  Copyright (c) 2014 Matthew Krager. All rights reserved.
//

#import "ride.h"

@implementation ride

-(id) initWithRideName: (NSString*) name RideImage: (UIImage*) image {
    self = [super init];
    self.name = name;
    self.image = image;
    return self;
}
@end
