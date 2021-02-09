//
//  main.m
//  Stocks
//
//  Created by Оля Качинская on 09.02.2021.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //создание объекта stocks
        StockHolding *stocks = [[StockHolding alloc] init];
        
        //присваивание значений
        [stocks setPurchaseSharePrice:19.7];
        [stocks setCurrentSharePrice:26.4];
        [stocks setNumberOfShares:6];
        
        //вызов метода costInDollars
        float cost = [stocks costInDollars];
        
        //вызов метода valueInDollars
        float value = [stocks valueInDollars];
        
        NSLog(@"Purchase share prise is %.1f\nCurrent share price is %.1f\nNumber of shares are %d",
              [stocks purchaseSharePrice], [stocks currentSharePrice],
              [stocks numberOfShares]);
        NSLog(@"Cost in dollars is %.1f\nValue in dollars is %.1f", [stocks costInDollars], [stocks valueInDollars]);
    }
    return 0;
}
