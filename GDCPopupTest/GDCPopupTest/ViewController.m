//
//  ViewController.m
//  GDCPopupTest
//
//  Created by Germano Dario Carlino on 25/06/16.
//  Copyright © 2016 GDC. All rights reserved.
//

#import "ViewController.h"
#import <GDCPopup/GDCPopup.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated{
	[super viewDidAppear:animated];
	
	
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


#pragma mark - PRIVATE

- (void)testPopup{

	// Example base
	//[ViewManager popupWithMessage:@"Ciao mondo" timeFire:3 viewController:self];
	
	// Example with popupproperties
	GDCPopupProperties *popupProperties	= [GDCPopupManager getPopupPropertyInstance];
	
	popupProperties.width				= 300;
	popupProperties.height				= 100;
	popupProperties.cornerRadius		= 20;
	
	popupProperties.backgroundColor		= [GDCPopupProperties colorFromHex:@"#e67e22" alpha:0.5];
	popupProperties.messageColor		= [UIColor redColor];
	
	popupProperties.message				= @"Ciao mondo";
	
	popupProperties.timeFire			= 2;
	
	[GDCPopupManager popupWithProperties:popupProperties viewController:self];
	
}

#pragma mark - ACTION
- (IBAction)testPopupAction:(id)sender {
	[self testPopup];
}
@end
