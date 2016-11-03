//
//  Doctor.h
//  PatientAndDoctor
//
//  Created by Suvan Ramani on 2016-11-03.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;

-(void)canAcceptPatient:(Patient *)patient;
-(void)requestMeds:(Patient *)patient;

@end
