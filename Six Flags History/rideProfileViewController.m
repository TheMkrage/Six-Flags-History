//
//  rideProfileViewController.m
//  Six Flags History
//
//  Created by Matthew Krager on 12/29/14.
//  Copyright (c) 2014 Matthew Krager. All rights reserved.
//

#import "rideProfileViewController.h"

@interface rideProfileViewController ()
{
    NSString* currentRide;
}
@end

@implementation rideProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setCurrentRide:(NSString *)currentRide1 {
    currentRide = currentRide1;
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
