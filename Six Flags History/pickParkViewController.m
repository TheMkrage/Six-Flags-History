//
//  pickParkViewController.m
//  Disney History
//
//  Created by Matthew Krager on 12/26/14.
//  Copyright (c) 2014 Matthew Krager. All rights reserved.
//

#import "pickParkViewController.h"
#import "parkTableCell.h"
#import "ridesViewController.h"
@interface pickParkViewController()
{
    IBOutlet UITableView *table;
    
}
@property(strong, nonatomic) NSMutableArray* parks;
@end

@implementation pickParkViewController

-(void)viewDidLoad {
    _parks = [NSMutableArray arrayWithArray:@[@"Six Flags Magic Mountain",@"Six Flags Great America"]];
    [table setDelegate:self];
    [table setDataSource:self];
    NSLog(@"dfas");
}

#pragma mark UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
        return [_parks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"parkCell";
    parkTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    long row = [indexPath row];
    cell.parkLabel.text = [_parks objectAtIndex:row];
    // Configure the cell...
    
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [[NSUserDefaults standardUserDefaults] setObject:[_parks objectAtIndex:[indexPath row]] forKey:@"currentPark"];
    NSString * storyboardName = @"Main";
    NSString * viewControllerID = @"ridesViewController";
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    ridesViewController* controller = (ridesViewController *)[storyboard instantiateViewControllerWithIdentifier:viewControllerID];
    [self.navigationController pushViewController:controller animated:YES];

}
@end
