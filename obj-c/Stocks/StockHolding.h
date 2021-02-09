//
//  StockHolding.h
//  Stocks
//
//  Created by Оля Качинская on 09.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StockHolding : NSObject

//создание переменных
{
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
}

@property float purchaseSharePrice, currentSharePrice;
@property int numberOfShares;

- (float)costInDollars;
- (float)valueInDollars;

@end

NS_ASSUME_NONNULL_END
