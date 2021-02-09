//
//  Employee.h
//  BMITime
//
//  Created by Оля Качинская on 09.02.2021.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee : Person
{
    int employeeID;
}
@property int employeeID;
@end

NS_ASSUME_NONNULL_END
