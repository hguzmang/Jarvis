//
//  DetalleProyectoViewController.h
//  JARVIS2
//
//  Created by Héctor Alonso Guzmán Gutiérrez on 05/09/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Proyecto.h"
#import <CoreData/CoreData.h>

@interface DetalleProyectoViewController : UIViewController
@property (strong, nonatomic) IBOutlet Proyecto *proyecto;
- (IBAction)guardar:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UITextField *detalleProyecto;

@end