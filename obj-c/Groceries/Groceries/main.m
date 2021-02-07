//
//  main.m
//  Groceries
//
//  Created by Оля Качинская on 08.02.2021.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool
        {
        
            NSMutableArray *listbuy = [NSMutableArray array];
    
            NSString *first = @"potatoes";
            NSString *second = @"cucumber";
            NSString *third = @"tomato";
        
            [listbuy addObject:first];
            [listbuy addObject:second];
            [listbuy addObject:third];
 
            // NSArray *buy = [NSArray arrayWithObjects:first,second,third, nil];
    
            for (NSString *d in listbuy)
                {
                    NSLog(@"my list: %@",d);
                }
        }
    return 0;
    }
