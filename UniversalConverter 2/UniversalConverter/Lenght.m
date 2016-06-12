//
//  Lenght.m
//  UniversalConverter
//
//  Created by epita on 11/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "Lenght.h"

@implementation Lenght

//For Meter
- (void) setMeter:(double)mtr
{
    meter = (mtr);
}

- (double) getMeter
{
    return (meter);
}

- (double) getMeterToKiloMeter
{
    return (meter / 1000);
}

- (double) getMeterToMile
{
    return (meter / 1609.344);
}

- (double) getMeterToFoot
{
    return (meter / 0.3048);
}


//For Kilometer
- (void) setKiloMeter:(double)km
{
     kiloMeter = (km);
}

- (double) getKiloMeter
{
    return (kiloMeter);
}

-(double) getKiloMeterToMeter
{
    return (kiloMeter * 1000);
}

- (double) getKiloMeterToMile
{
    return (kiloMeter / 1.609344);
}

- (double) getKiloMeterToFoot
{
    return (kiloMeter / 0.0003048 );
}

//For Mile
- (void) setMile:(double)ml{
    mile = (ml);
}

- (double) getMile
{
    return (mile);
}

- (double) getMileToMeter
{
    return (mile * 1609.344);
}

- (double) getMileToKiloMeter
{
    return (mile * 1.609344);
}

- (double) getMileToFoot
{
    return (mile * 5280);
}

//For Foot
- (void) setFoot:(double)ft
{
    foot = (ft);
}


- (double) getFoot
{
    return (foot);
}

- (double) getFootToMeter
{
    return (foot * 0.3048);
}

- (double) getFootToKiloMeter
{
    return (foot * 0.0003048);
}

- (double) getFootToMile
{
    return (foot * 0.000189394);
}





@end
