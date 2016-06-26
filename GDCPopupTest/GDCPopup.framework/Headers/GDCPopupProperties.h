//
//  PopupProperties.h
//  GDCPopup
//
//  Created by Germano Dario Carlino on 25/06/16.
//  Copyright © 2016 GDC. All rights reserved.
//

#import "GDCProperties.h"

#define POPUP_WIDTH				300
#define POPUP_HEIGHT			50
#define POPUP_CORNERRADIUS		10

#define POPUP_BACKGROUND_COLOR	[UIColor grayColor]
#define POPUP_MESSAGE_COLOR		[UIColor whiteColor]

#define POPUP_TIME_FIRE			3

@interface GDCPopupProperties : GDCProperties

#pragma mark - PROPERTY
// ****** PROPERTY ******

// ------ DIMENSION ------

@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat cornerRadius;

// ----------------------- end dimension

// ------ VALUE ------

@property (nonatomic) NSTimeInterval timeFire;

// ------------------- end value

// ***********************

#pragma mark - METHOD

- (instancetype)init;

@end