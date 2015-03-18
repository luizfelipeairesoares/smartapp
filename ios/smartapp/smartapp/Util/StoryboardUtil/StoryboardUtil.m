//
//  StoryboardUtil.m
//  localwander
//
//  Created by Felipe on 19/10/14.
//  Copyright (c) 2014 localwander. All rights reserved.
//

#import "StoryboardUtil.h"

@implementation StoryboardUtil

+ (UIViewController *)viewControllerWithStoryboard:(NSString *)storyboardName controllerName:(NSString *)controllerName{
    if (!storyboardName || !controllerName)
        return nil;
    
    NSString *deviceStoryboardName = storyboardName;
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:deviceStoryboardName bundle:nil];
    if (!mainStoryboard)
        return nil;
    
    return [mainStoryboard instantiateViewControllerWithIdentifier:controllerName];
}

@end
