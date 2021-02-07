//
//  main.m
//  DateList
//
//  Created by Оля Качинская on 08.02.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //creating three objs NSDate
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // creating an empty array
        NSMutableArray *dateList = [NSMutableArray array];
        
        //including dates in an array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        //put yesterday at the beginning of the list
        [dateList insertObject:yesterday atIndex:0];
        
        //fast listing cycle
        for (NSDate *d in dateList)
        {
            NSLog(@"here is a date: %@", d);
        }
        
        //remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [dateList objectAtIndex:0]);
        
//        //сколько объектов содержит список?
//        NSLog(@"There are %lu dates", [dateList count]);
//
//        //выво содержимого пары объектов
//        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
//        NSLog(@"The third date is %@", [dateList objectAtIndex:2]);
  }
    return 0;
}
