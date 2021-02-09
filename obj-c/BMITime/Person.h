//
//  Person.h
//  BMITime
//
//  Created by Оля Качинская on 09.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// класс Person наследует все переменные экзмемпляров
// и методы, определенные в классе NSObject
@interface Person : NSObject
{
    // класс содержит две переменные экземпляров
    float heightInMeters;
    int weightInKilos;
}

@property float heightInMeters;
@property int weightInKilos;

//// методы, которые будут использоваться для присваивания
//// значений переменных экземпляров
//- (void)setHeightInMeters:(float)h;
//- (void)setWeightInKilos:(int)w;
//
////get-методы
//- (float)heightInMeters;
//- (int)weightInKilos;
//// метод для вычисления ИМТ
- (float)bodyMassIndex;

@end

NS_ASSUME_NONNULL_END
