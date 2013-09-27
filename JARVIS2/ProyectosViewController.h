//
//  ProyectosViewController.h
//  JARVIS2
//
//  Created by Héctor Alonso Guzmán Gutiérrez on 23/08/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "SimpleTableCell.h"

@interface ProyectosViewController : UIViewController <UITableViewDataSource, NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) IBOutlet UITableView *proyectosTableView;
@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end