		//
//  ConfiguracionViewController.m
//  JARVIS2
//
//  Created by Panda on 28/06/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import "ConfiguracionViewController.h"

@interface ConfiguracionViewController ()

@end

@implementation ConfiguracionViewController


@synthesize tableContents;
@synthesize sortedKeys;

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    NSArray *arrTemp1 = [[NSArray alloc] initWithObjects:@"Andrew",@"Aubrey",@"Alice",nil];
    NSArray *arrTemp2 = [[NSArray alloc] initWithObjects:@"Bob",@"Bill",@"Bianca",nil];
    NSArray *arrTemp3 = [[NSArray alloc] initWithObjects:@"Candice",@"Clint",@"Chris",nil];
    NSDictionary *temp =[[NSDictionary alloc] initWithObjectsAndKeys: arrTemp1, @"A", arrTemp2, @"B", arrTemp3, @"C",nil];
    self.tableContents =temp;
    
    self.sortedKeys =[[self.tableContents allKeys] sortedArrayUsingSelector:@selector(compare:)];
    [super viewDidLoad];
}

#pragma mark Table Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [self.sortedKeys count];
}

- (NSString *)tableView:(UITableView *)tableView
titleForHeaderInSection:(NSInteger)section
{
    return [self.sortedKeys objectAtIndex:section];
}

- (NSInteger)tableView:(UITableView *)table
numberOfRowsInSection:(NSInteger)section {
    NSArray *listData =[self.tableContents objectForKey:
                        [self.sortedKeys objectAtIndex:section]];
    return [listData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    
    NSArray *listData =[self.tableContents objectForKey:
                        [self.sortedKeys objectAtIndex:[indexPath section]]];
    
    UITableViewCell * cell = [tableView
                              dequeueReusableCellWithIdentifier: SimpleTableIdentifier];
    
    if(cell == nil) {
        
        cell = [[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleDefault
                 reuseIdentifier:SimpleTableIdentifier];
        
        /*cell = [[[UITableViewCell alloc]
         initWithStyle:UITableViewCellStyleSubtitle
         reuseIdentifier:SimpleTableIdentifier] autorelease];
         */
    }
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [listData objectAtIndex:row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSArray *listData =[self.tableContents objectForKey:
                        [self.sortedKeys objectAtIndex:[indexPath section]]];
    NSUInteger row = [indexPath row];
    NSString *rowValue = [listData objectAtIndex:row];
    
    NSString *message = [[NSString alloc] initWithFormat: rowValue];
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"You selected"
                          message:message delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil];
    [alert show];

    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
