//
//  Wbs.h
//  JARVIS2
//
//  Created by Panda on 16/08/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Wbs : NSManagedObject

@property (nonatomic, retain) NSString * descripcion;
@property (nonatomic, retain) NSString * wbs;
@property (nonatomic, retain) NSNumber * identificador;
@property (nonatomic, retain) NSString * actividad;

@end
