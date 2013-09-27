//
//  ActividadesViewController.h
//  JARVIS2
//
//  Created by Héctor Alonso Guzmán Gutiérrez on 31/05/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface ActividadesViewController : UIViewController <UITableViewDataSource, NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@end
