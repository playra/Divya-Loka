//
//  DLViewController.m
//  Divya Loka
//
//  Created by @playra on 06.04.14.
//  Copyright (c) 2014 @playra. All rights reserved.
//

#import "DLViewController.h"

@interface DLViewController ()

@end

@implementation DLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"credo" ofType:@"rtf"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_symbolWebView loadRequest:request];
    [_symbolWebView setScalesPageToFit:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    UIBarButtonItem* rightButton = [[UIBarButtonItem alloc]
                                    initWithTitle:@"Принять"
                                    style:UIBarButtonItemStylePlain
                                    target:self action:@selector(doneButton)];
    
    [rightButton setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                         [UIFont fontWithName:@"Trebuchet MS" size:18], NSFontAttributeName,
                                         [UIColor colorWithRed:56.0/255.0 green:56.0/255.0 blue:255.0/255.0 alpha:1.0], NSForegroundColorAttributeName,
                                         nil]
                               forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = rightButton;
}


- (void) doneButton
{
    [self performSegueWithIdentifier:@"DLDirectoryTableViewController" sender:nil];
}

@end
