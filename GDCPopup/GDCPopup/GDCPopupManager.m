//
//  PopupManager.m
//  GDCPopup
//
//  Created by Germano Dario Carlino on 25/06/16.
//  Copyright © 2016 GDC. All rights reserved.
//

#import "GDCPopupManager.h"
#import "GDCPopupProperties.h"

@interface GDCPopupManager()

+ (GDCPopupProperties *)getDefaultPopupProperties;
+ (void)popupFromProperties:(GDCPopupProperties *)properties view:(UIView *)view;

@end

@implementation GDCPopupManager

#pragma mark - PRIVATE METHOD
// ****** PRIVATE METHOD ******

+ (GDCPopupProperties *)getDefaultPopupProperties{
	return [[GDCPopupProperties alloc] init];
}

+ (void)popupFromProperties:(GDCPopupProperties *)properties view:(UIView *)view{
	
	CGFloat wRect		= properties.width;
	CGFloat hRect		= properties.height;
	CGFloat xRect		= [[UIScreen mainScreen] bounds].size.width/2 - wRect/2;
	CGFloat yRect		= [[UIScreen mainScreen] bounds].size.height - (hRect + 20);
	CGRect rect			= CGRectMake(xRect, yRect, wRect, hRect);
	
	UIView *popUpView				= [[UIView alloc] initWithFrame:rect];
	popUpView.backgroundColor		= properties.backgroundColor;
	popUpView.layer.cornerRadius	= properties.cornerRadius;
	popUpView.alpha = 0;
	
	CGRect textRect		= CGRectMake(5, 5, popUpView.frame.size.width - 5, popUpView.frame.size.height - 5);
	
	UILabel *textLabel		= [[UILabel alloc] initWithFrame:textRect];
	textLabel.font			= [UIFont systemFontOfSize:14.0 weight:UIFontWeightSemibold];
	textLabel.textColor		= properties.messageColor;
	textLabel.textAlignment = NSTextAlignmentCenter;
	textLabel.text			= properties.message;
	textLabel.numberOfLines	= 0;
	[popUpView addSubview:textLabel];
	
	[view addSubview:popUpView];
	[view bringSubviewToFront:popUpView];
	
	[UIView animateWithDuration:1 animations:^{
		
		popUpView.alpha = 0.8;
		
	} completion:^(BOOL finished) {
		[UIView animateKeyframesWithDuration:1 delay:properties.timeFire > 5 ? 5 : properties.timeFire options:UIViewKeyframeAnimationOptionBeginFromCurrentState animations:^{
			popUpView.alpha = 0;
		} completion:^(BOOL finished) {
			[popUpView removeFromSuperview];
		}];
		
	}];
	
}

// ****************************

#pragma mark - PUBLIC METHOD
// ****** PUBLIC METHOD ******


// ------ POPUP ------

+ (GDCPopupProperties *)getPopupPropertyInstance{
	return [[GDCPopupProperties alloc] init];
}

+ (void)popupToView:(UIView *)view{
	
	[GDCPopupManager popupFromProperties:[GDCPopupManager getDefaultPopupProperties] view:view];
}

+ (void)popupWithMessage:(NSString *)message timeFire:(NSTimeInterval )interval view:(UIView *)view{
	
	GDCPopupProperties *popupProperties	= [GDCPopupManager getDefaultPopupProperties];
	popupProperties.message				= message;
	popupProperties.timeFire			= interval;
	
	[GDCPopupManager popupFromProperties:popupProperties view:view];
}

+ (void)popupWithProperties:(GDCPopupProperties *)properties view:(UIView *)view{
	
	[GDCPopupManager popupFromProperties:properties view:view];
	
}

+ (void)popupToViewController:(UIViewController *)viewController{
	[GDCPopupManager popupFromProperties:[GDCPopupManager getDefaultPopupProperties] view:viewController.view];
}

+ (void)popupWithMessage:(NSString *)message timeFire:(NSTimeInterval )interval viewController:(UIViewController *)viewController{
	
	GDCPopupProperties *popupProperties	= [GDCPopupManager getDefaultPopupProperties];
	popupProperties.message				= message;
	popupProperties.timeFire			= interval;
	
	[GDCPopupManager popupFromProperties:popupProperties view:viewController.view];
}

+ (void)popupWithProperties:(GDCPopupProperties *)properties viewController:(UIViewController *)viewController{
	
	[GDCPopupManager popupFromProperties:properties view:viewController.view];
}
// ------------------- end popup

// ****************************

@end
