//
//  park.m
//  Six Flags History
//
//  Created by Matthew Krager on 12/28/14.
//  Copyright (c) 2014 Matthew Krager. All rights reserved.
//

#import "park.h"
@interface park() {
    NSString* currentPark;
    
}
@end
@implementation park
#define SFMM @"Six Flags Magic Mountain"
#define SFGA @"Six Flags Great Adventure"

-(id) initWithParkName:(NSString*) parkName {
    self = [super init];
    currentPark = parkName;
    NSLog(@"current Park: %@",currentPark);
    [self setRidesIntoArray];
    return self;
}

-(void) setRidesIntoArray {
    NSString* parkFileName;
    if([currentPark  isEqual: SFMM]) {
        NSLog(@"Equal mm");
        parkFileName = @"SixFlagsMagicMountainRides";
    }else if([currentPark isEqual:SFGA]) {
        parkFileName = @"SixFlagsGreatAdventureRides";
    }
    
    NSString* filePath = [[NSBundle mainBundle] pathForResource:parkFileName ofType:@"txt"];
    
    NSLog(@"%@",filePath);
    self.rides = [NSMutableArray arrayWithArray:[[NSString stringWithContentsOfFile:filePath
                                                encoding:NSUTF8StringEncoding
                                                   error:nil]
                      componentsSeparatedByString:@"\n"]];
    NSLog(@"%@", self.rides);
}

@end