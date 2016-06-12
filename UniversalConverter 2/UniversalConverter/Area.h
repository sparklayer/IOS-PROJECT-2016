//
//  Area.h
//  UniversalConverter
//
//  Created by epita on 10/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Area : NSObject


{
    Area *areaConv;
    
    double squareKilometer;
    double squareMeter;
    double squareFoot;
    
}

//Setting the values of squareKilometer,squareMeter & squareFoot.
- (void) setSquareKiloMeter: (double) sqKm;
- (void) setSquareMeter: (double) sqM;
- (void) setSquareFoot: (double) sqF;

//Methods to return converted values from squareKilometer to squareKilometer,squareMeter & squareFoot.
- (double) getSquareKiloMeter;
- (double) getSquareKiloMeterToSquareMeter;
- (double) getSquareKiloMeterToSquareFoot;

//Methods to return converted values from squareMeter to squareKilometer,squareMeter & squareFoot.
- (double) getSquareMeter;
- (double) getSquareMeterToSquareKiloMeter;
- (double) getSquareMeterToSquareFoot;

//Methods to return converted values from squareFoot  to squareKilometer,squareMeter & squareFoot.
- (double) getSquareFoot;
- (double) getSquareFootToSquareKiloMeter;
- (double) getSquareFootToSquareMeter;



@end
