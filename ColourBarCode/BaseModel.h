//
//  BaseModel.m
//  ColourBarCode
//
//  Created by Kian Davoudi-Rad on 2016-05-20.
//  Copyright © 2016 Kian Davoudi. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface baseModel:NSObject

// Model for operation of button in view controller

typedef struct NodeOperator{
    bool *StartStopButton;
    struct NodeOperator *next;
}NodeOperator;


@end;