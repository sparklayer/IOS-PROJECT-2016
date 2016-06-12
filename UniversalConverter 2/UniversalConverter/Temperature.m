//
//  Temperature.m
//  UniversalConverter
//
//  Created by epita on 10/06/16.
//  Copyright © 2016 epita. All rights reserved.
//


#import "Temperature.h"

@implementation Temperature;


//For Celsius
- (void) setCelsius: (double) c
{
    Celcius = (c);
}

- (double) getCelsius
{
    return (Celcius);
}

- (double) getCelsiusToFahrenheit
{
    return (Celcius * 1.8 + 32);
}

- (double) getCelsiusToKelvin
{
    return ( Celcius  + 273.15);
}

//For Farenheit
- (void) setFahrenheit: (double) f
{
    Fahrenheit = (f);
}

- (double) getFahrenheit
{
    return (Fahrenheit);
}

- (double) getFahrenheitToCelsius
{
    return  (( Fahrenheit - 32) / 1.8);
}

- (double) getFahrenheitToKelvin
{
    return (( Fahrenheit + 459.67) / 1.8);
}

//For Kelvin
- (void) setKelvin: (double) k
{
    kelvin = (k);
}

- (double) getKelvin
{
    return (kelvin);
}

- (double) getKelvinToCelsius
{
    return (kelvin - 273.15);
}

- (double) getKelvinToFahrenheit
{
    return (kelvin * 1.8 - 459.67);

}


@end