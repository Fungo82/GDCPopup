//
//  ViewManager.m
//  GDCPopupTest
//
//  Created by Germano Dario Carlino on 25/06/16.
//  Copyright © 2016 GDC. All rights reserved.
//

#import "ViewManager.h"

@interface ViewManager()

+ (PopupProperties *)getDefaultPopupProperties;
+ (void)popupFromProperties:(PopupProperties *)properties view:(UIView *)view;

@end

@implementation ViewManager

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

#pragma mark - PRIVATE METHOD
// ****** PRIVATE METHOD ******

+ (PopupProperties *)getDefaultPopupProperties{
	return [[PopupProperties alloc] init];
}

+ (void)popupFromProperties:(PopupProperties *)properties view:(UIView *)view{
	
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

+ (void)alertviewTwoButtonWithTitle:(NSString *)title message:(NSString *)message button1Title:(NSString *)title1 button2Title:(NSString *)title2{
	
}

// ------ POPUP ------

+ (void)popupToView:(UIView *)view{

	[ViewManager popupFromProperties:[ViewManager getDefaultPopupProperties] view:view];
}

+ (void)popupWithMessage:(NSString *)message timeFire:(NSTimeInterval )interval view:(UIView *)view{
	
	PopupProperties *popupProperties	= [ViewManager getDefaultPopupProperties];
	popupProperties.message				= message;
	popupProperties.timeFire			= interval;
	
	[ViewManager popupFromProperties:popupProperties view:view];
}

+ (void)popupWithProperties:(PopupProperties *)properties view:(UIView *)view{

	[ViewManager popupFromProperties:properties view:view];

}

+ (void)popupToViewController:(UIViewController *)viewController{
	[ViewManager popupFromProperties:[ViewManager getDefaultPopupProperties] view:viewController.view];
}

+ (void)popupWithMessage:(NSString *)message timeFire:(NSTimeInterval )interval viewController:(UIViewController *)viewController{
	
	PopupProperties *popupProperties	= [ViewManager getDefaultPopupProperties];
	popupProperties.message				= message;
	popupProperties.timeFire			= interval;
	
	[ViewManager popupFromProperties:popupProperties view:viewController.view];
}

+ (void)popupWithProperties:(PopupProperties *)properties viewController:(UIViewController *)viewController{
	
	[ViewManager popupFromProperties:properties view:viewController.view];
}
// ------------------- end popup

// ****************************
@end
