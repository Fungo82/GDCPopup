//
//  Properties.h
//  GDCPopup
//
//  Created by Germano Dario Carlino on 25/06/16.
//  Copyright © 2016 GDC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface GDCProperties : NSObject

#pragma mark - PROPERTY
// ****** PROPERTY ******

// ------ DIMENSION ------

// only popup
/*
 @property (nonatomic) CGFloat width;
 @property (nonatomic) CGFloat height;
 @property (nonatomic) CGFloat cornerRadius;
 */
// ----------------------- end dimension

// ------ COLOR ------

@property (retain, nonatomic) UIColor *backgroundColor;
@property (retain, nonatomic) UIColor *titleColor;
@property (retain, nonatomic) UIColor *messageColor;

// ------------------- end color

// ------ VALUE ------

@property (retain, nonatomic) NSString *title; // Only alertview
@property (retain, nonatomic) NSString *message;

//@property (nonatomic) NSTimeInterval timeFire; // Only popup

// ------------------- end value

// ***********************

#pragma mark - METHOD
// ****** METHOD ******

+ (UIColor *)colorFromHex:(NSString *)hexcolor alpha:(CGFloat)alpha;

// **********************

@end