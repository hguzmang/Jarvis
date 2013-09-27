//
//  DetalleProyectoViewController.m
//  JARVIS2
//
//  Created by Héctor Alonso Guzmán Gutiérrez on 05/09/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import "DetalleProyectoViewController.h"

@interface DetalleProyectoViewController ()

@end

@implementation DetalleProyectoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    Proyecto *newManagedObject = self.proyecto;
    self.detalleProyecto.text = newManagedObject.descripcion;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)guardar:(id)sender {
    AppDelegate *appDelegate = (AppDelegate*) [[UIApplication sharedApplication] delegate];
    Proyecto *newManagedObject = self.proyecto;
    [newManagedObject setValue:self.detalleProyecto.text forKey:@"descripcion"];
    [appDelegate saveContext];
}
@end
