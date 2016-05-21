//
//  ViewController.m
//  ColourBarCode
//
//  Created by Kian Davoudi-Rad on 2016-05-20.
//  Copyright © 2016 Kian Davoudi. All rights reserved.
//

#import "ViewController.h"
#import "BaseModel.h"

// Public Methods
@interface ViewController ()

@end



// Private Mehods
@implementation ViewController

  NodeOperator *Operator;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Operator = (NodeOperator*)malloc(sizeof(NodeOperator));;
    Operator->StartStopButton = false;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)StartAuthentication:(UIButton*)sender {
    
      ManageButton(sender);
   
}

// Button Managament: May 19th2016, call down all of operations to Bussiness Repo

void ManageButton(UIButton *button){

    if (!Operator->StartStopButton)
    {
        Operator->StartStopButton = true;
        [button setSelected:YES];
        
        [button setTitle:@"Click to Stop!" forState:UIControlStateSelected];
    }
    else {
        Operator->StartStopButton = false;
        [button setSelected:NO];
        [button setTitle:@"Click to Start Again!" forState:!UIControlStateSelected];
        
    }

}
@end
