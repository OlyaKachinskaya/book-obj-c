//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Оля Качинская on 09.02.2021.
//

#import "StockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface ForeignStockHolding : StockHolding

//creating a new variable
{
    float conversionRate;
}

//accessor for variable conversionRate
@property float conversionRate;
@end

NS_ASSUME_NONNULL_END
