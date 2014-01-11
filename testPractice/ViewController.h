//
//  ViewController.h
//  testPractice
//
//  Created by Joe437 on 2013/11/22.
//  Copyright (c) 2013年 Joe437. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *mwv;
- (IBAction)message:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *editing;
//@property (weak, nonatomic) IBOutlet UILabel *label;

@end
