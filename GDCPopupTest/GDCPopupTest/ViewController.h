//
//  ViewController.h
//  GDCPopupTest
//
//  Created by Germano Dario Carlino on 25/06/16.
//  Copyright © 2016 GDC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

#pragma mark - PROPERTY
// ****** PROPERTY ******

@property (weak, nonatomic) IBOutlet UIButton *testPopupButton;

// **********************

#pragma mark - ACTION
// ****** ACTION ******

- (IBAction)testPopupAction:(id)sender;

// *********************

@end

