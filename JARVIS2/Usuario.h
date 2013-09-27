//
//  Usuario.h
//  JARVIS2
//
//  Created by Panda on 16/08/13.
//  Copyright (c) 2013 Francisco Esteban Aguilar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Actividad;

@interface Usuario : NSManagedObject

@property (nonatomic, retain) NSString * apellidoPaterno;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * apellidoMaterno;
@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSNumber * identificador;
@property (nonatomic, retain) NSSet *actividades;
@end

@interface Usuario (CoreDataGeneratedAccessors)

- (void)addActividadesObject:(Actividad *)value;
- (void)removeActividadesObject:(Actividad *)value;
- (void)addActividades:(NSSet *)values;
- (void)removeActividades:(NSSet *)values;

@end
