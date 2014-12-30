//
//  ridesViewController.m
//  Six Flags History
//
//  Created by Matthew Krager on 12/28/14.
//  Copyright (c) 2014 Matthew Krager. All rights reserved.
//

#import "ridesViewController.h"
#import "park.h"
#import "parkTableCell.h"
#import "rideProfileViewController.h"
@interface ridesViewController ()

{
    park* currentPark;
}
@property (strong, nonatomic) IBOutlet UITableView *table;
@end

@implementation ridesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    currentPark = [[park alloc] initWithParkName:[[NSUserDefaults standardUserDefaults] objectForKey:@"currentPark"]];
    [self.table setDelegate:self];
    [self.table setDataSource:self];
    // Do any additional setup after loading the view.
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

#pragma mark UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [currentPark.rides count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"parkCell";
    parkTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    long row = [indexPath row];
    cell.parkLabel.text = [currentPark.rides objectAtIndex:row];
    // Configure the cell...
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
    NSString * storyboardName = @"Main";
    NSString * viewControllerID = @"rideProfileViewController";
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    rideProfileViewController* controller = (rideProfileViewController *)[storyboard instantiateViewControllerWithIdentifier:viewControllerID];
    [self.navigationController pushViewController:controller animated:YES];
    
}

@end
