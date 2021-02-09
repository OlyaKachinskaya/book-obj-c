//
//  main.m
//  BMITime
//
//  Created by Оля Качинская on 09.02.2021.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //создание экземпляра Person
        Person *person = [[Person alloc] init];
        
        //присваивание значение переменным экземпляра
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        
        //вызов метода bodyMassIndex
        float bmi = [person bodyMassIndex];
        NSLog(@"person (%d, %.1f) has a BMI of %f",
              [person weightInKilos],[person heightInMeters],bmi);
        
    }
    return 0;
}
