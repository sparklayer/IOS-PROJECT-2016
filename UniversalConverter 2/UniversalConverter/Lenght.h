//
//  Lenght.h
//  UniversalConverter
//
//  Created by epita on 11/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Lenght : NSObject

{
    Lenght *lenghtConv;
    
    double meter;
    double kiloMeter;
    double mile;
    double foot;
    
}

//Setting the values of Meter,kilometer,Mile & Foot.
- (void) setMeter: (double) mtr;
- (void) setKiloMeter: (double) km;
- (void) setMile: (double) ml;
- (void) setFoot: (double) ft;

//Methods to return converted values from Meter to Meter, kilometer,Mile & Foot.
- (double) getMeter;
- (double) getMeterToKiloMeter;
- (double) getMeterToMile;
- (double) getMeterToFoot;

//Methods to return converted values from Kilometer to Meter,kilometer,Mile & Foot.
- (double) getKiloMeter;
- (double) getKiloMeterToMeter;
- (double) getKiloMeterToMile;
- (double) getKiloMeterToFoot;

//Methods to return converted values from Mile to Meter,kilometer,Mile & Foot.
- (double) getMile;
- (double) getMileToMeter;
- (double) getMileToKiloMeter;
- (double) getMileToFoot;

//Methods to return converted values from Foot to Meter,kilometer,Mile & Foot.
- (double) getFoot;
- (double) getFootToMeter;
- (double) getFootToKiloMeter;
- (double) getFootToMile;





@end
