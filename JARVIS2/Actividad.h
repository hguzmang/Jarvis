//
//  Actividad.h
//  JARVIS2
//
//  Created by Panda on 16/08/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Wbs;

@interface Actividad : NSManagedObject

@property (nonatomic, retain) NSString * descripcion;
@property (nonatomic, retain) NSDate * inicio;
@property (nonatomic, retain) NSNumber * identificador;
@property (nonatomic, retain) NSNumber * incremento;
@property (nonatomic, retain) NSNumber * duracion;
@property (nonatomic, retain) Wbs *wbs;

@end
