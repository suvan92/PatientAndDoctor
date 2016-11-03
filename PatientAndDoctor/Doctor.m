//
//  Doctor.m
//  PatientAndDoctor
//
//  Created by Suvan Ramani on 2016-11-03.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "Doctor.h"

@interface Doctor ()

@property (nonatomic, strong) NSMutableSet *acceptedPatients;
@property (nonatomic, strong) NSDictionary *medications;

@end

@implementation Doctor

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization {
    self = [super init];
    if (self) {
        
        _name = name;
        _specialization = specialization;
        
        _acceptedPatients = [[NSMutableSet alloc] init];
        _medications = [NSDictionary dictionaryWithObjectsAndKeys:
                        @"Rizatriptan", @"Migrane",
                        @"Acyclovir", @"Herpes",
                        @"Super Advil", @"Arthritis",
                        @"Polysporin", @"Pink Eye", nil];
    }
    return self;
}


-(void)canAcceptPatient:(Patient *)patient {
    
    if (patient.hasValidHealthCard) {
        [self.acceptedPatients addObject:patient];
        
        NSLog(@"%@", [NSString stringWithFormat:@"\n%@ has been accepted by %@", patient.name, self.name]);
    } else {
        NSLog(@"\n%@ needs a valid health card to visit %@", patient.name, self.name);
    }
}


-(void)requestMeds:(Patient *)patient {
    
    BOOL canRecieveMeds = false;
    
    // If patient is accepted by that doctor or patient has
    if ([self.acceptedPatients containsObject:patient]) {
        canRecieveMeds = true;
    } else if (patient.prescriptions.count > 0) {
        canRecieveMeds = true;
    }
    
    // If the patient can recieve medication
    if (canRecieveMeds) {
        // Iterate through the patients symptoms and add the appropriate medication from the medications dictionary to the patient's prescriptions list
        for (NSString *symptom in patient.symptoms) {
            [patient.prescriptions addObject:[self.medications objectForKey:symptom]];
    
            NSLog(@"\n%@ has been perscribed %@ by %@", patient.name, [self.medications objectForKey:symptom], self.name);
        }
    } else {
        NSLog(@"\n%@ cannot perscribe any medication to %@", self.name, patient.name);
    }
}

@end
