//
//  ViewManager.h
//  GDCPopupTest
//
//  Created by Germano Dario Carlino on 25/06/16.
//  Copyright © 2016 GDC. All rights reserved.
//

#import "PopupProperties.h"

@interface ViewManager : UIView

#pragma mark - PUBLIC

// ****** METHODS ******

// ------ ALERT VIEW ------

+ (void)alertviewTwoButtonWithTitle:(NSString *)title message:(NSString *)message button1Title:(NSString *)title1 button2Title:(NSString *)title2;

// ------------------------- end alertview

// ------ POPUP ------

+ (void)popupToView:(UIView *)view;
+ (void)popupWithMessage:(NSString *)message timeFire:(NSTimeInterval )interval view:(UIView *)view;
+ (void)popupWithProperties:(PopupProperties *)properties view:(UIView *)view;

+ (void)popupToViewController:(UIViewController *)viewController;
+ (void)popupWithMessage:(NSString *)message timeFire:(NSTimeInterval )interval viewController:(UIViewController *)viewController;
+ (void)popupWithProperties:(PopupProperties *)properties viewController:(UIViewController *)viewController;
// ------------------- end popup

// **********************
@end
