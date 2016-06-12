//
//  Temperature.h
//  UniversalConverter
//
//  Created by epita on 10/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Temperature : NSObject


{
    Temperature *tempConv;
    
    double Celcius;
    double Fahrenheit;
    double kelvin;
    
}

//Setting the values ofCelsius,Farenheit & Kelvin.
- (void) setCelsius: (double) c;
- (void) setFahrenheit: (double) f;
- (void) setKelvin: (double) k;

//Methods to return converted values from Celsius to Celsius,Farenheit & Kelvin.
- (double) getCelsius;
- (double) getCelsiusToFahrenheit;
- (double) getCelsiusToKelvin;

//Methods to return converted values from Farenheit to Celsius,Farenheit & Kelvin.
- (double) getFahrenheit;
- (double) getFahrenheitToCelsius;
- (double) getFahrenheitToKelvin;

//Methods to return converted values from Kelvin to Celsius,Farenheit & Kelvin.
- (double) getKelvin;
- (double) getKelvinToCelsius;
- (double) getKelvinToFahrenheit;

@end
