//
//  Properties.m
//  GDCPopup
//
//  Created by Germano Dario Carlino on 25/06/16.
//  Copyright © 2016 GDC. All rights reserved.
//

#import "GDCProperties.h"
#import <objc/runtime.h>

@implementation GDCProperties


#pragma mark - PRIVATE METHOD
// ****** PRIVATE METHOD ******



// **************************

#pragma mark - PUBLIC METHOD
// ****** PUBLIC METHOD ******

+ (UIColor *)colorFromHex:(NSString *)hexcolor alpha:(CGFloat)alpha{
	
	NSString *cString = [[hexcolor stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
	
	cString = [cString stringByReplacingOccurrencesOfString:@"#" withString:@""];
	
	// String should be 6 characters
	if ([cString length] < 6){
		return [UIColor grayColor];
	}
	// strip 0X if it appears
	if ([cString hasPrefix:@"0X"]){
		cString = [cString substringFromIndex:2];
	}
	
	if ([cString length] != 6){
		return  [UIColor grayColor];
	}
	
	// Get rgb value separated
	NSRange range;
	range.length = 2;
	
	range.location = 0;
	NSString *rString = [cString substringWithRange:range];
	
	range.location = 2;
	NSString *gString = [cString substringWithRange:range];
	
	range.location = 4;
	NSString *bString = [cString substringWithRange:range];
	
	unsigned int r, g, b;
	[[NSScanner scannerWithString:rString] scanHexInt:&r];
	[[NSScanner scannerWithString:gString] scanHexInt:&g];
	[[NSScanner scannerWithString:bString] scanHexInt:&b];
	
	return [UIColor colorWithRed:((float) r / 255.0f)
						   green:((float) g / 255.0f)
							blue:((float) b / 255.0f)
						   alpha:alpha];
}

// ***************************

@end

