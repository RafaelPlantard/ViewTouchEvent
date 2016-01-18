//
//  VTECircleView.h
//  ViewTouchEvent
//
//  Created by Rafael Ferreira on 1/18/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import <UIKit/UIKit.h>

/*! @brief A custom implementation of a view for showing all points that the user interactes with. */
@interface VTECircleView : UIView {
    
    /*! @brief An collection with all points that the user already pointed. */
    NSMutableArray *circles;
}

@end
