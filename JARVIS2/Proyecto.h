//
//  Proyecto.h
//  JARVIS2
//
//  Created by Héctor Alonso Guzmán Gutiérrez on 23/08/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import <CoreData/CoreData.h>
#import <Foundation/Foundation.h>
@class Wbs;

@interface Proyecto : NSManagedObject

@property (nonatomic, retain) NSString * descripcion;
@property (nonatomic, retain) NSNumber * identificador;
@end