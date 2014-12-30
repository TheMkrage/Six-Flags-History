//
//  park.h
//  Six Flags History
//
//  Created by Matthew Krager on 12/28/14.
//  Copyright (c) 2014 Matthew Krager. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface park : NSObject

@property(strong,nonatomic)NSMutableArray* rides;
@property(strong,nonatomic)NSString* selectedPark;

-(id) initWithParkName:(NSString*) parkName;
@end
