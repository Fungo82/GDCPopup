//
//  PopupManager.h
//  GDCPopup
//
//  Created by Germano Dario Carlino on 25/06/16.
//  Copyright © 2016 GDC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GDCPopupProperties;

@interface GDCPopupManager : NSObject

#pragma mark - PUBLIC

// ****** METHODS ******

// ------ ALERT VIEW ------


// ------------------------- end alertview

// ------ POPUP ------

+ (GDCPopupProperties *)getPopupPropertyInstance;

+ (void)popupToView:(UIView *)view;
+ (void)popupWithMessage:(NSString *)message timeFire:(NSTimeInterval )interval view:(UIView *)view;
+ (void)popupWithProperties:(GDCPopupProperties *)properties view:(UIView *)view;

+ (void)popupToViewController:(UIViewController *)viewController;
+ (void)popupWithMessage:(NSString *)message timeFire:(NSTimeInterval )interval viewController:(UIViewController *)viewController;
+ (void)popupWithProperties:(GDCPopupProperties *)properties viewController:(UIViewController *)viewController;
// ------------------- end popup

// **********************

@end
