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
    IBOutlet UIScrollView *scrollView;
    IBOutlet UIScrollView *detailScrollView;
    IBOutlet UITextView *descriptionTextView;
    IBOutlet UIImageView *imageView;
}
@end

@implementation rideProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",currentRide);
    NSString *rideDescriptionFileName = [NSString stringWithFormat:@"%@Description",currentRide];
    NSString* filePath = [[NSBundle mainBundle] pathForResource:rideDescriptionFileName ofType:@"txt"];
    
    NSString* descriptionText = [NSString stringWithContentsOfFile:filePath
                                                          encoding:NSUTF8StringEncoding
                                                             error:nil];
    descriptionTextView.text =descriptionText;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLayoutSubviews {
    scrollView.frame = CGRectMake(scrollView.frame.origin.x, scrollView.frame.origin.y, 320, self.view.frame.size.height);
    scrollView.contentSize = CGSizeMake(320, 700);
    [scrollView  setCenter:CGPointMake(scrollView.center.x, scrollView.center.y - 62)];
    
    
    
    [self.view layoutSubviews];
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
