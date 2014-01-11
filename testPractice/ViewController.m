//
//  ViewController.m
//  testPractice
//
//  Created by Joe437 on 2013/11/22.
//  Copyright (c) 2013年 Joe437. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(IBAction)dismissNext:(UIStoryboardSegue *)segue{
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL *myURL=[NSURL URLWithString:@"http://gaefun0612.appspot.com"];
    
    NSMutableURLRequest * myURLReq=[NSMutableURLRequest requestWithURL:myURL];
    [self.mwv loadRequest:myURLReq];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)message:(id)sender {
    NSMutableURLRequest *myURLReq = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://gaefun0612.appspot.com/sign"]];
    NSString *userInput=self.editing.text;
    myURLReq.HTTPMethod = @"POST";
    NSString * bodyString = [NSString stringWithFormat:@"content=%@",userInput];
    NSData * data = [bodyString dataUsingEncoding:NSUTF8StringEncoding];
    myURLReq.HTTPBody = data;
    [NSURLConnection sendAsynchronousRequest:myURLReq queue:[NSOperationQueue new] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        NSLog(@"result %@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
    }];
    //self.label.text=self.editing.text; //this can show the editing on the new label if you drag a new label on storyboard
    
}
@end
