//
//  Employee.m
//  BMITime
//
//  Created by Оля Качинская on 09.02.2021.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}
@end
