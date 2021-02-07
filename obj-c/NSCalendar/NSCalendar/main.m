//
//  main.m
//  NSCalendar
//
//  Created by Оля Качинская on 07.02.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //вывод действующей даты
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The date is %@", now);

        //вывод кол-ва секунд с 1970
        double seconds = [now timeIntervalSince1970];
        NSLog(@"It has been %f seconds since the start of 1970.", seconds);

        //вывод даты через 100000 секунд с нынешнего времени
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100,000 seconds it will be %@",later);

        //узнаю день действуюего месяца
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSUInteger day = [cal ordinalityOfUnit:NSDayCalendarUnit
                                        inUnit:NSMonthCalendarUnit
                                       forDate:now];
        NSLog(@"This is day %lu of the month", day);
        
        //узнаю часовой пояс моего компьютера
        // в timezone возвращается часовой пояс компьютера
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        
           //в summertime  возвращаю 1 в случае летнего времени, в обратно случае 0
        bool summertime = [timeZone isDaylightSavingTime];
        NSLog(@"%@",(summertime ? @"yes" : @"no"));
        
        //вывод имени моего компьютера
        NSHost *inf = [NSHost currentHost];
        NSString *name = [inf localizedName];
        NSLog(@"My computer's name is %@", name);
        
        
    }
    return 0;
}
