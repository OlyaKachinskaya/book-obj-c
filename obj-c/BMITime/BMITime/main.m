//
//  main.m
//  BMITime
//
//  Created by Оля Качинская on 09.02.2021.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //создание экземпляра Employee
        Employee *person = [[Employee alloc] init];
    
        //присваивание значение переменным экземпляра
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:15];
        
        //вызов метода bodyMassIndex
        float bmi = [person bodyMassIndex];
        NSLog(@"Employee %d has a BMI of %f",
              [person employeeID],bmi);
       
       
    }
    return 0;
}
