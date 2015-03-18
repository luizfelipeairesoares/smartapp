//
//  StoryboardUtil.h
//  localwander
//
//  Created by Felipe on 19/10/14.
//  Copyright (c) 2014 localwander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "StoryboardConstants.h"

@interface StoryboardUtil : NSObject

+ (UIViewController *)viewControllerWithStoryboard:(NSString *)storyboardName controllerName:(NSString *)controllerName;

@end
