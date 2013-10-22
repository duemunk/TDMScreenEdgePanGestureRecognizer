//
//  TDMScreenEdgePanGestureRecognizer.h
//  3D Dermatomes
//
//  Created by Tobias DM on 22/10/13.
//  Copyright (c) 2013 developmunk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TDMScreenEdgePanGestureRecognizer : UIScreenEdgePanGestureRecognizer

- (void)requireToFailSubScrollViewsPanGestures;

@end
