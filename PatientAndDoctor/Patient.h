//
//  Patient.h
//  PatientAndDoctor
//
//  Created by Suvan Ramani on 2016-11-03.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (nonatomic, assign) int *age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic) BOOL hasVaidHealthCard;
@property (nonatomic, strong) NSSet *symptoms;
@property (nonatomic, strong) NSMutableArray *prescriptions;

-(instancetype)initWithName:(NSString *)name age:(int)age andHasValidHealthCard:(BOOL)healthCard;
-(void)visitDoctor:(Doctor *)doctor;

@end
