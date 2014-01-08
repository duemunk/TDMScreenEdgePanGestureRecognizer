//
//  TDMScreenEdgePanGestureRecognizer.m
//  3D Dermatomes
//
//  Created by Tobias DM on 22/10/13.
//  Copyright (c) 2013 developmunk. All rights reserved.
//

#import "TDMScreenEdgePanGestureRecognizer.h"

@implementation TDMScreenEdgePanGestureRecognizer



- (void)requireToFailSubScrollViewsPanGestures
{
	[self requireSubScrollViewsToFailForGesture:self];
}

- (void)requireSubScrollViewsToFailForGesture:(UIGestureRecognizer *)gestureRecognizer
{
	// Find all subviews that are UIScrollViews
	NSArray *subscrollviews = [self findSubviewOfClass:[UIScrollView class]
												inView:gestureRecognizer.view];
	
	// Add requireGestureRecognizerToFail subscrollviews.panGestureRecognizer for gestureRecognizer
	for (UIScrollView *subscrollview in subscrollviews) {
		[subscrollview.panGestureRecognizer requireGestureRecognizerToFail:gestureRecognizer];
	}
}

- (NSArray *)findSubviewOfClass:(__unsafe_unretained Class)class inView:(UIView *)view
{
	NSMutableArray *subviewsOfClass = [@[] mutableCopy];
	
	// Find
	if ([view respondsToSelector:@selector(subviews)])
	{
		for (UIView *subview in view.subviews) {
			if ([subview isKindOfClass:class]) {
				[subviewsOfClass addObject:subview];
			}
			
			// Traverse further down in subviews
			NSArray *subsubviewOfClass = [self findSubviewOfClass:class inView:subview];
			[subviewsOfClass addObjectsFromArray:subsubviewOfClass];
		}
	}
	
	return subviewsOfClass;
}



@end
