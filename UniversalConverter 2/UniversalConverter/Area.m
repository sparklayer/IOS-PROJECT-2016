//
//  Area.m
//  UniversalConverter
//
//  Created by epita on 10/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "Area.h"

@implementation Area

//For SquareKilometer
- (void) setSquareKiloMeter:(double)sqKm
{
    squareKilometer = (sqKm);
}

- (double) getSquareKiloMeter
{
    return (squareKilometer);
}

-(double) getSquareKiloMeterToSquareMeter
{
    return (squareKilometer * 1000000);
}

-(double) getSquareKiloMeterToSquareFoot
{
    return ( squareKilometer * 10763910.0);
}

//For Squaremeter
- (void) setSquareMeter:(double)sqM
{
  squareMeter = (sqM);
}

- (double) getSquareMeter
{
    return (squareMeter);
}

-(double) getSquareMeterToSquareKiloMeter
{
    return (squareMeter / 1000000);
}

-(double) getSquareMeterToSquareFoot{
    return ( squareMeter / 0.09290304 );
}

//For SquareFeet
- (void) setSquareFoot:(double)sqF
{
    squareFoot = (sqF);
}

- (double) getSquareFoot
{
    return (squareFoot);
}

- (double) getSquareFootToSquareMeter
{
    return (squareFoot * 0.09290304  );
}

- (double) getSquareFootToSquareKiloMeter
{
    return (squareFoot * 0.00000009290304);
}








@end
