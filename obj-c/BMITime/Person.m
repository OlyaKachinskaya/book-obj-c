//
//  Person.m
//  BMITime
//
//  Created by Оля Качинская on 09.02.2021.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;
//- (float)heightInMeters
//{
//    return heightInMeters;
//}
//
//- (int)weightInKilos
//{
//    return weightInKilos;
//}
//
//- (void)setHeightInMeters:(float)h
//{
//    heightInMeters = h;
//}
//
//- (void)setWeightInKilos:(int)w
//{
//    weightInKilos = w;
//}

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}
@end
