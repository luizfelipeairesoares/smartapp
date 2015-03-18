//
//  MainTabBarController.m
//  smartapp
//
//  Created by Luiz Soares on 3/18/15.
//
//

#import "MainTabBarController.h"
#import "SeriesNavigationController.h"
#import "MapNavigationController.h"
#import "StoryboardUtil.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self configureTabBarControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TabBar

- (void)configureTabBarControllers {
    SeriesNavigationController *seriesNavigationController = (SeriesNavigationController *)[StoryboardUtil viewControllerWithStoryboard:kSeriesStoryboard controllerName:kSeriesNavigationController];
    MapNavigationController *mapNavigationController = (MapNavigationController *)[StoryboardUtil viewControllerWithStoryboard:kMapStoryboard controllerName:kMapNavigationController];
    [self setViewControllers:@[mapNavigationController, seriesNavigationController]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
