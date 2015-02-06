//
//  AppDelegate.m
//  UXKitSample
//
//  Created by Michał Kałużny on 06.02.2015.
//  Copyright (c) 2015 justmaku. All rights reserved.
//

#import "AppDelegate.h"
#import "UXKit.h"
#import "JMKSampleViewController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@property (strong, nonatomic) UXWindowController *windowController;
@property (strong, nonatomic) UXViewController *rootViewController;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    self.rootViewController = [[JMKSampleViewController alloc] init];
    self.windowController = [[UXWindowController alloc] initWithRootViewController:self.rootViewController];
    
    [self.windowController showWindow:self];
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
