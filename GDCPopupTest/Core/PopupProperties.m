//
//  PopupProperties.m
//  GDCPopupTest
//
//  Created by Germano Dario Carlino on 25/06/16.
//  Copyright © 2016 GDC. All rights reserved.
//

#import "PopupProperties.h"



@implementation PopupProperties

- (instancetype)init{
	
	self = [super init];
	if (self) {
		_width					= POPUP_WIDTH;
		_height					= POPUP_HEIGHT;
		_cornerRadius			= POPUP_CORNERRADIUS;
		super.backgroundColor	= POPUP_BACKGROUND_COLOR;
		super.messageColor		= POPUP_MESSAGE_COLOR;
		super.message			= @"";
		_timeFire			= POPUP_TIME_FIRE;
	}
	return self;
	
}

@end
