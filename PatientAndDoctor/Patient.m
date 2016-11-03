//
//  Patient.m
//  PatientAndDoctor
//
//  Created by Suvan Ramani on 2016-11-03.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

-(instancetype)initWithName:(NSString *)name age:(int)age andHasValidHealthCard:(BOOL)healthCard {
    
    self = [super init];
    if (self) {
        _name = name;
        _age = &age;
        _hasVaidHealthCard = healthCard;
        
        _prescriptions = [NSMutableArray new];
        
    }
    return self;
}



-(void)visitDoctor:(Doctor *)doctor {
    
    [doctor canAcceptPatient:self];
}

@end

