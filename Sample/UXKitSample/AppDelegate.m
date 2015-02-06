//
//  AppDelegate.m
//  UXKitSample
//
//  Created by Michał Kałużny on 06.02.2015.
//  Copyright (c) 2015 justmaku. All rights reserved.
//

#import "AppDelegate.h"
#import "JMKNavigationViewController.h"
#import "JMKMainViewController.h"

@interface AppDelegate ()

@property (strong, nonatomic) UXWindowController *windowController;
@property (strong, nonatomic) UXNavigationController *rootViewController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    self.rootViewController = [[JMKNavigationViewController alloc] init];
    self.windowController = [[UXWindowController alloc] initWithRootViewController:self.rootViewController];
    
    [self.windowController showWindow:self];
    
    JMKMainViewController *mainVC = [JMKMainViewController new];
    
    [self.rootViewController pushViewController:mainVC animated:NO];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
