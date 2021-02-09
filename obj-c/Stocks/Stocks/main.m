//
//  main.m
//  Stocks
//
//  Created by Оля Качинская on 09.02.2021.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"

//function for setting value
void SetupPurchase(StockHolding *purchase, float pusrchaseSharePrice, float currentSharePrice, int numberOfShares)
{
    [purchase setPurchaseSharePrice : pusrchaseSharePrice];
    [purchase setCurrentSharePrice : currentSharePrice];
    [purchase setNumberOfShares : numberOfShares];
}

//function for display information
void DisplayPurchaseInfo (NSString *number,StockHolding *purchase)
{
    NSLog(@"%@\nPurchase share prise is %.1f\nCurrent share price is %.1f\nNumber of shares are %d",number,
          [purchase purchaseSharePrice],
          [purchase currentSharePrice],
          [purchase numberOfShares]);
    NSLog(@"Cost in dollars is %.1f\nValue in dollars is %.1f",
          [purchase costInDollars], [purchase valueInDollars]);
}

//combining setting value and outputting information
void SetupPurchaseAndDisplayInfo(StockHolding *purchase, float pusrchaseSharePrice,
                                 float currentSharePrice, int numberOfShares,NSString *number)
{
    SetupPurchase(purchase, pusrchaseSharePrice, currentSharePrice, numberOfShares);
    DisplayPurchaseInfo(number, purchase);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        StockHolding *firstPurchase = [[StockHolding alloc] init];
        StockHolding *secondPurchase = [[StockHolding alloc] init];
        ForeignStockHolding *thirdPurchase = [[ForeignStockHolding alloc] init];
        
        [thirdPurchase setConversionRate:0.94];
        
        SetupPurchaseAndDisplayInfo(firstPurchase, 2.30, 4.50, 40, @"FIRST");
        SetupPurchaseAndDisplayInfo(secondPurchase, 2.30, 4.50, 40, @"SECOND");
        SetupPurchaseAndDisplayInfo(thirdPurchase, 2.30, 4.50, 40, @"THIRD");
        
    }
    return 0;
}
