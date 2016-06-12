//
//  ViewController.h
//  UniversalConverter
//
//  Created by epita on 02/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Temperature.h"
#import "Area.h"
#import "Lenght.h"

@interface ViewController : UIViewController <UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource>

{
    Area *areaConv;
    Lenght *lenghtConv;
    Temperature *tempConv;

}

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIButton *buttonConverter;

@property (weak, nonatomic) IBOutlet UIPickerView *pickermain;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerSelection;

@property (strong, nonatomic) NSArray *unitList;
@property (strong, nonatomic) NSArray *areaList;
@property (strong, nonatomic) NSArray *lengthList;
@property (strong, nonatomic) NSArray *temperatureList;
@property (strong, nonatomic) NSArray *array;

@property (strong, nonatomic) NSString *templist;
@property (strong, nonatomic) NSString *selectedValue;

@property ( nonatomic) NSInteger selectedRow;
@property ( nonatomic) NSInteger secondRow;
@property ( nonatomic) NSInteger firstselectedRow;







@end

