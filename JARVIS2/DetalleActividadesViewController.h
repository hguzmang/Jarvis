//
//  DetalleActividadesViewController.h
//  JARVIS2
//
//  Created by Antony on 14/06/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "AppDelegate.h"
#import "Actividad.h"

@interface DetalleActividadesViewController : UIViewController <UITextFieldDelegate>
{
    
}

- (IBAction)guardarDetalle:(id)sender;
- (IBAction)displayDate:(id)sender;

@property (nonatomic, strong ) IBOutlet UITextField *detalleAct;
@property (strong, nonatomic) IBOutlet UITextField *inicioAct;
@property (strong, nonatomic) IBOutlet UITextField *duracionAct;

@property (strong, nonatomic) IBOutlet Actividad *actividad;
@property (strong, nonatomic)  NSDate *inicioActFecha;
@property (nonatomic, strong) IBOutlet UIDatePicker *picker;
@property (nonatomic, strong) IBOutlet UIDatePicker *pickerDuracion;
@property (nonatomic, strong) UIBarButtonItem *clearRightButtonItem;

@end
