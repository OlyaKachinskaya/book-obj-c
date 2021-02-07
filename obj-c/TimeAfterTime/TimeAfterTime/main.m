//
//  main.m
//  TimeAfterTime
//
//  Created by Оля Качинская on 07.02.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create a new date obj for a given year / month / etc.
        //создание нового объекта date по заданному году / месяцу / и т.д.
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:2000];
        [comps setMonth:5];
        [comps setDay:15];
        [comps setHour:17];
        [comps setMinute:40];
        [comps setSecond:0];
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBerth = [g dateFromComponents:comps];

        // creat a new date obj for the current year / ...
        //созлание нового объекта date по нынешному году / ...
        NSDate *now = [[NSDate alloc] init];
        double d = [now timeIntervalSinceDate:dateOfBerth];
        NSLog(@"My life lasts %f sec", d);


    }
    return 0;
}
