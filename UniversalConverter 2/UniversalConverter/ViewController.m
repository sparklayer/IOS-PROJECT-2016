//
//  ViewController.m
//  UniversalConverter
//
//  Created by epita on 02/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

@synthesize  secondRow,firstselectedRow, selectedRow,selectedValue,templist, array,unitList,areaList,lengthList,temperatureList,pickermain,pickerSelection,buttonConverter,textField,label;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tempConv = [[Temperature alloc] init];
    areaConv = [[Area alloc] init];
    lenghtConv = [[Lenght alloc] init];
    
    
    array = [[NSArray alloc] initWithObjects: @"SqKm",@"SqM",@"SqFt",nil];

    unitList = [[NSArray alloc] initWithObjects: @"Area",@"Len",@"Temp",nil];
    
    areaList = [[NSArray alloc] initWithObjects: @"SqKm",@"SqM",@"SqFt",nil];
    
    lengthList = [[NSArray alloc] initWithObjects: @"Meter",@"KM",@"Mile",@"Foot",nil];
    
    temperatureList = [[NSArray alloc] initWithObjects: @"Cel",@"Fah",@"Kel", nil];
    

}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    if (pickerView == pickermain)
    {
        return  1;
    }
    
    if (pickerView == pickerSelection)
    {
        return 2;
    }
    return 0;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    if (pickerView == pickermain )
    {
        return 3;
    }
    
    if (pickerView == pickerSelection)
    {
        return  [array count];
        
    }
    
    return  0;
    
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
  
    if (pickerView == pickermain && component == 0 )
    {
        return [unitList objectAtIndex:row];
    }
    
    
    if (pickerView == pickerSelection)
    {
        return [array objectAtIndex:row];
    }
    return  0;
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
 
    if (pickerView == pickermain)
    {
        switch (row) {
            case 0:
                firstselectedRow = 0;
                array = areaList;
              return [pickerSelection reloadAllComponents];
                
                break;
            case 1:
                 firstselectedRow = 1;
                array = lengthList;
                return [pickerSelection reloadAllComponents];
                break;
            case 2:
                 firstselectedRow = 2 ;
                array = temperatureList;
                return [pickerSelection reloadAllComponents];
                break;
                
            default:
                break;
        }
    }
    
    

    
    if(pickerView == pickerSelection)
    {
    
        switch (firstselectedRow)
        {
            case 0:
                if (component == 0 )
                {
                    
                    NSArray *a = [areaList objectAtIndex:row];
                    secondRow = [self.areaList indexOfObject:a];
                    
                    [pickerSelection selectRow:secondRow inComponent:1 animated:YES];
                    [pickerSelection reloadComponent:1];
                    
                    selectedValue = templist;
                    selectedRow = row;
                }
                else if (component == 1 )
                {
                    templist = [areaList objectAtIndex:row];
                    
                    NSArray *a = [areaList objectAtIndex:row];
                    secondRow = [self.areaList indexOfObject:a];
                    
                    [pickerSelection selectRow:secondRow inComponent:1 animated:YES];
                    [pickerSelection reloadComponent:1];
                    
                    selectedValue = templist;
                    secondRow = row;
                    
                }
                break;
                
            case 1:
                if (component == 0 )
                {
                    
                    NSArray *a = [lengthList objectAtIndex:row];
                    secondRow = [self.lengthList indexOfObject:a];
                    
                    [pickerSelection selectRow:secondRow inComponent:1 animated:YES];
                    [pickerSelection reloadComponent:1];
                    
                    selectedValue = templist;
                    selectedRow = row;
                }
                else if (component == 1 )
                {
                    templist = [lengthList objectAtIndex:row];
                    
                    NSArray *a = [lengthList objectAtIndex:row];
                    secondRow = [self.lengthList indexOfObject:a];
                    
                    [pickerSelection selectRow:secondRow inComponent:1 animated:YES];
                    [pickerSelection reloadComponent:1];
                    
                    selectedValue = templist;
                    secondRow = row;
                    
                }
                break;

            case 2 :
                if (component == 0 )
                {
                    
                    NSArray *a = [temperatureList objectAtIndex:row];
                    secondRow = [self.temperatureList indexOfObject:a];
                    
                    [pickerSelection selectRow:secondRow inComponent:1 animated:YES];
                    [pickerSelection reloadComponent:1];
                    
                    selectedValue = templist;
                    selectedRow = row;
                }
                else if (component == 1 )
                {
                    templist = [temperatureList objectAtIndex:row];
                    
                    NSArray *a = [temperatureList objectAtIndex:row];
                    secondRow = [self.temperatureList indexOfObject:a];
                    
                    [pickerSelection selectRow:secondRow inComponent:1 animated:YES];
                    [pickerSelection reloadComponent:1];
                    
                    selectedValue = templist;
                    secondRow = row;
                    
                }
                break;

            default:
                break;
        }
    }
    
    

}

- (IBAction)buttonConverter:(id)sender
{

    
    NSNumber *result;
    
    
    // For Area Conversions
    if (firstselectedRow == 0)
    {
        switch (selectedRow) {
            case 0:
                if (secondRow == 0)
                {
                    [areaConv setSquareKiloMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[areaConv getSquareKiloMeter]];
                    break;
                }
                else if (secondRow == 1)
                {
                    [areaConv setSquareKiloMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[areaConv getSquareKiloMeterToSquareMeter]];
                    break;
                }
                else if (secondRow == 2)
                {
                    [areaConv setSquareKiloMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[areaConv getSquareKiloMeterToSquareFoot]];
                    break;
                }
                
            case 1:
                if (secondRow == 0)
                {
                    [areaConv setSquareMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[areaConv getSquareMeterToSquareKiloMeter]];
                    break;
 
                }
                else if (secondRow == 1)
                {
                    [areaConv setSquareMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[areaConv getSquareMeter]];
                    break;

                }
                else if (secondRow == 2)
                {
                    [areaConv setSquareMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[areaConv getSquareMeterToSquareFoot]];
                    break;

                }
                
            case 2:
                if (secondRow == 0)
                {
                    [areaConv setSquareFoot:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[areaConv getSquareFootToSquareKiloMeter]];
                    break;

                }
                else if (secondRow == 1)
                {
                    [areaConv setSquareFoot:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[areaConv getSquareFootToSquareMeter]];
                    break;

                }
                else if (secondRow == 2)
                {
                    [areaConv setSquareFoot:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[areaConv getSquareFoot]];
                    break;
   
                }
                
            default:
                break;
        }
    }
    
    
    
   // For Lenght Conversions
    if (firstselectedRow == 1)
    {
        switch (selectedRow) {
            case 0:
                if (secondRow == 0)
                {
                    [lenghtConv setMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getMeter]];
                    break;
                }
                else if (secondRow == 1)
                {
                    [lenghtConv setMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getMeterToKiloMeter]];
                    break;
                }
                else if (secondRow == 2)
                {
                    [lenghtConv setMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getMeterToMile]];
                    break;
                }
                else if (secondRow == 3)
                {
                    [lenghtConv setMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getMeterToFoot]];
                    break;
                }
                
                
            case 1:
                if (secondRow == 0)
                {
                    [lenghtConv setKiloMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getKiloMeterToMeter]];
                    break;
                    
                }
                else if (secondRow == 1)
                {
                    [lenghtConv setKiloMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getKiloMeter]];
                    break;
                    
                }
                else if (secondRow == 2)
                {
                    [lenghtConv setKiloMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getKiloMeterToMile]];
                    break;
                    
                }
                else if (secondRow == 3)
                {
                    [lenghtConv setKiloMeter:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getKiloMeterToFoot]];
                    break;
                }
                
            case 2:
                if (secondRow == 0)
                {
                    [lenghtConv setMile:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getMileToMeter]];
                    break;
                }
                else if (secondRow == 1)
                {
                    [lenghtConv setMile:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getMileToKiloMeter]];
                    break;
                    
                }
                else if (secondRow == 2)
                {
                    [lenghtConv setMile:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getMile]];
                    break;
                    
                }
                else if (secondRow == 3)
                {
                    [lenghtConv setMile:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getMileToFoot]];
                    break;
                }
                
            case 3:
                if (secondRow == 0)
                {
                    [lenghtConv setFoot:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getFootToMeter]];
                    break;
                }
                else if (secondRow == 1)
                {
                    [lenghtConv setFoot:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getFootToKiloMeter]];
                    break;
                    
                }
                else if (secondRow == 2)
                {
                    [lenghtConv setFoot:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getFootToMile]];
                    break;
                    
                }
                else if (secondRow == 3)
                {
                    [lenghtConv setFoot:[textField.text doubleValue ]];
                    result = [NSNumber numberWithDouble:[lenghtConv getFoot]];
                    break;
                }
                
            default:
                break;
        }
    }

   // For Temperature Conversions
    if (firstselectedRow == 2)
    {
    switch (selectedRow) {
        case 0:
            if (secondRow == 0)
            {
                [tempConv setCelsius:[textField.text doubleValue ]];
                result = [NSNumber numberWithDouble:[tempConv getCelsius]];
                 break;
            }
          else if (secondRow == 1)
            {
                [tempConv setCelsius:[textField.text doubleValue ]];
                result = [NSNumber numberWithDouble:[tempConv getCelsiusToFahrenheit]];
                break;
            }
          else if (secondRow == 2)
          {
              [tempConv setCelsius:[textField.text doubleValue ]];
              result = [NSNumber numberWithDouble:[tempConv getCelsiusToKelvin]];
              break;
          }
            
        case 1:
            if (secondRow == 0)
            {
                [tempConv setFahrenheit:[textField.text doubleValue ]];
                result = [NSNumber numberWithDouble:[tempConv getFahrenheitToCelsius]];
                break;
            }
            else if (secondRow == 1)
            {
                [tempConv setFahrenheit:[textField.text doubleValue ]];
                result = [NSNumber numberWithDouble:[tempConv getFahrenheit]];
                break;
            }
            else if (secondRow == 2)
            {
                [tempConv setFahrenheit:[textField.text doubleValue ]];
                result = [NSNumber numberWithDouble:[tempConv getFahrenheitToKelvin]];
                break;
            }
            
        case 2:
            if (secondRow == 0)
            {
                [tempConv setKelvin:[textField.text doubleValue ]];
                result = [NSNumber numberWithDouble:[tempConv getKelvinToCelsius]];
                break;
            }
            else if (secondRow == 1)
            {
                [tempConv setKelvin:[textField.text doubleValue ]];
                result = [NSNumber numberWithDouble:[tempConv getKelvinToFahrenheit]];
                break;
            }
            else if (secondRow == 2)
            {
                [tempConv setKelvin:[textField.text doubleValue ]];
                result = [NSNumber numberWithDouble:[tempConv getKelvin]];
                break;
            }

        default:
            break;
    }
        }
    
    
    NSLog(@"%@", label.text);
   
    label.text = [result stringValue];
    
}



- (void)didReceiveMemoryWarning
    {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
