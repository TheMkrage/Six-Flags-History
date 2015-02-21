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
    
   
    UIImage* rideImage = [UIImage imageNamed:[NSString stringWithFormat:@"%@Image.jpg",currentRide]];
    imageView.image = rideImage;
    
    
    // Do any additional setup after loading the view.
    NSLog(@"X: %f, Y: %f, Width: %f, Height: %f", descriptionTextView.frame.origin.x, descriptionTextView.frame.origin.y,descriptionTextView.frame.size.width,descriptionTextView.frame.size.height);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLayoutSubviews {
    //[scrollView setBackgroundColor:[UIColor blackColor]];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, 1130);
   /* scrollView.frame = CGRectMake(scrollView.frame.origin.x , scrollView.frame.origin.y, scrollView.frame.size.width, self.view.frame.size.height - 62);
    scrollView.contentSize = CGSizeMake(320, 1000);
    [imageView setFrame:CGRectMake(8, 8, 304, 162)];
    
    //[scrollView  setCenter:CGPointMake(scrollView.center.x, scrollView.center.y - 62)];
    [descriptionTextView setFont:[UIFont fontWithName:@"Menlo" size:16]];*/
    
    
    
    //[self.view layoutSubviews];
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
