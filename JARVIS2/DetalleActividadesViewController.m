//
//  DetalleActividadesViewController.m
//  JARVIS2
//
//  Created by Antony on 14/06/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import "DetalleActividadesViewController.h"


@interface DetalleActividadesViewController ()

@end

@implementation DetalleActividadesViewController




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
    self.detalleAct.delegate = self;
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    Actividad *actividad = self.actividad;
    self.detalleAct.text = actividad.descripcion;
    
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EE', 'dd' 'MMM' 'yyyy' 'HH':'mm"];
    
    NSLocale *esLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"es_MX"];
    
    [self.picker setLocale:esLocale];
    //    [self.picker setDate:dateFromString(self.inicioAct.text, @"EE', 'dd' 'MMM' 'yyyy' 'HH':'mm")];
    [self.picker setDate: actividad.inicio];
    [dateFormatter setLocale:esLocale];
    
    self.inicioAct.text = [dateFormatter stringFromDate:[actividad inicio]];
    self.inicioActFecha = actividad.inicio;
    
    [self.pickerDuracion setLocale:esLocale];
    
    [self.pickerDuracion setDatePickerMode:UIDatePickerModeCountDownTimer];
    
    self.duracionAct.text = @"00hrs : 00 min : 00seg";
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    [self.detalleAct resignFirstResponder];
    return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)guardarDetalle:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    
    
    Actividad *newManagedObject = self.actividad;
    [newManagedObject setValue:_detalleAct.text forKey:@"descripcion"];
    
    
    
    NSDate *date = [[NSDate alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EE', 'dd' 'MMM' 'yyyy' 'HH':'mm"];
    NSLog(@"cosa %@",_inicioAct.text);
    NSLocale *esLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"es_ES"];
    [dateFormatter setLocale:esLocale];
    date = [dateFormatter dateFromString:_inicioAct.text];
    NSLog(@"_duracionAct %@",_duracionAct.text);
    //    [newManagedObject setValue:_inicioActFecha forKey:@"inicio"];
    [newManagedObject setValue:date forKey:@"inicio"];
    [appDelegate saveContext];
}
- (IBAction)inicioActDidBeginEditing:(UITextField *)sender {
    
    [_inicioAct resignFirstResponder];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]
                                   initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                   target:self
                                   action:@selector(doneButtonEvent)];
    
    self.picker.hidden = NO;
    self.navigationItem.rightBarButtonItem = doneButton;
    [self.view addSubview:_picker];
}
- (IBAction)duracionActEditingDidBegin:(UITextField *)sende{
    [self.duracionAct resignFirstResponder];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]
                                   initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                   target:self
                                   action:@selector(doneButtonEvent)];
    
    self.pickerDuracion.hidden = NO;
    self.navigationItem.rightBarButtonItem = doneButton;
    [self.view addSubview:self.pickerDuracion];
    
}
- (IBAction)displayDuracion:(UIDatePicker *)sender {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"HH'hrs : 'mm 'min : 'ss'seg '"];
    
    NSLocale *esLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"es_ES"];
    [dateFormatter setLocale:esLocale];
    
    self.pickerDuracion.hidden = NO;
    NSString * selected = [dateFormatter stringFromDate:[self.pickerDuracion date]];
    NSString * date = [selected description];
    self.duracionAct.text = date;
    //self.inicioActFecha = [self.picker date];
    
    
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]
                                   initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                   target:self
                                   action:@selector(doneButtonEvent)];
    
    
    self.navigationItem.rightBarButtonItem = doneButton;
    
    
    NSLog(@"fecha en formato %@",self.duracionAct.text );
}

- (IBAction)displayDate:(id)sender{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EE', 'dd' 'MMM' 'yyyy' 'HH':'mm"];
    
    NSLocale *esLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"es_MX"];
    [dateFormatter setLocale:esLocale];
    self.picker.hidden = NO;
    NSString * selected = [dateFormatter stringFromDate:[self.picker date]];
    NSString * date = [selected description];
    self.inicioAct.text = date;
    self.inicioActFecha = [self.picker date];
    
    
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc]
                                   initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                   target:self
                                   action:@selector(doneButtonEvent)];
    
    
    self.navigationItem.rightBarButtonItem = doneButton;
    
    
    NSLog(@"fecha en formato %@",self.inicioAct.text );
}
- (void) doneButtonEvent{
    self.navigationItem.rightBarButtonItem = _clearRightButtonItem;
    if(!_picker.isHidden){
        _picker.hidden = YES;
    }else if(!_pickerDuracion.isHidden){
        _pickerDuracion.hidden = YES;
    }
}

- (UIBarButtonItem *) clearRightButtonItem {
    if (_clearRightButtonItem == nil) {
        UIButton *rightButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 38, 38)];
        [rightButton setImage:nil forState:UIControlStateNormal];
        _clearRightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];
    }
    return _clearRightButtonItem;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	if (!self.picker.isHidden)
    {
        self.picker.hidden = YES;
        self.navigationItem.rightBarButtonItem = _clearRightButtonItem;
	}else if (!self.pickerDuracion.isHidden){
        _pickerDuracion.hidden = YES;
        self.navigationItem.rightBarButtonItem = _clearRightButtonItem;
    }
    
    if(self.detalleAct.isFirstResponder){
        [self.detalleAct resignFirstResponder];
    }
    
    if(self.duracionAct.isFirstResponder){
        [self.duracionAct resignFirstResponder];
    }
}


@end
