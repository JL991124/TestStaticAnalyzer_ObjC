//
//  ViewController.m
//  TestStaticAnalyzer_ObjC
//
//  Created by jay.lam on 16/5/2022.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString* resultString = [self intToString:3];
    NSLog(@"Hi %s", [resultString UTF8String]);
    [self foreverLoop123];
}

- (nonnull NSString *)intToString: (int)temp {
    NSString *tempString = nil;
    switch (temp) {
        case 0:
            tempString = @"0";
            break;
        case 1:
            tempString = @"1";
            break;
        case 2:
            tempString = @"2";
            break;
        default:
            break;
    }

    NSString *resultString = tempString;
    return resultString;
}

- (void)foreverLoop {
    int row = 0;
    int column = 0;
    int value = 0;
    
    for(row = 0; row < 3; ++row) {
        for(column = 0; column <= row; ++value) {
            ++value;
            NSLog(@"%c", value);
        }
    }
}

- (void)foreverLoop123 {
    int row = 0;
    int column = 0;
    int value = 0;
    
    for(row = 0; row < 3; ++row) {
        for(column = 0; column <= row; ++value) {
            ++value;
            NSLog(@"%c", value);
        }
    }
}

@end
