//
//  rtspPlayer.m
//  RTSP Player
//
//  Created by Recai Sinekli on 01/07/16.
//  Copyright © 2016 Recai Sinekli. All rights reserved.
//

#import "rtspPlayer.h"

@implementation rtspPlayer

-(void) watch:(CDVInvokedUrlCommand*) command {
    
    self.lastCommand = command;

    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController * uvc  = (UINavigationController *)[storyboard instantiateInitialViewController];
    ViewController *vc = (ViewController *)uvc.topViewController;
    
    vc.videoAddress = [command argumentAtIndex:0];
    vc.origem = self;
    // present the View
    [self.viewController presentViewController: uvc animated:YES completion:nil];
}

-(void) dismissPlayer {
    // End the execution
    [self.commandDelegate sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK]
                                callbackId:self.lastCommand.callbackId];
    
    // dismiss view from stack
    [self.viewController dismissViewControllerAnimated:YES completion:nil];
}

@end
