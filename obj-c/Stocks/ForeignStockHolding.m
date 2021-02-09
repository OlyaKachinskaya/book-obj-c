//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Оля Качинская on 09.02.2021.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    float rate = [self conversionRate];
    float cost = [super costInDollars];
    return cost * rate;
}

- (float)valueInDollars
{
    float rate = [self conversionRate];
    float value = [super valueInDollars];
    return value * rate;
}

@end
