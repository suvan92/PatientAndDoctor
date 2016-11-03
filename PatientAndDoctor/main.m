//
//  main.m
//  PatientAndDoctor
//
//  Created by Suvan Ramani on 2016-11-03.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *drHouse = [[Doctor alloc] initWithName:@"Dr.House" andSpecialization:@"Internal Medicine"];
        
        Doctor *drDre = [[Doctor alloc] initWithName:@"Dr.Dre" andSpecialization:@"Gangasta Rap"];
        
        Patient *oldMan = [[Patient alloc] initWithName:@"Old man Frank" age:83 andHasValidHealthCard:true];
        
        Patient *patientZero = [[Patient alloc] initWithName:@"Patient 0" age:14 andHasValidHealthCard:false];
        
        [patientZero visitDoctor:drDre];
        
        [oldMan visitDoctor:drHouse];

        oldMan.symptoms = [NSSet setWithObjects:@"Arthritis", @"Pink Eye", nil];
        
        [drHouse requestMeds:oldMan];
        
        [drHouse requestMeds:patientZero];
        
        [drDre requestMeds:oldMan];
        
        
        
    }
    return 0;
}
