//
//  rtspPlayer.h
//  RTSP Player
//
//  Created by Recai Sinekli on 01/07/16.
//  Copyright © 2016 Recai Sinekli. All rights reserved.
//

#import <Cordova/CDVPlugin.h>
#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface rtspPlayer : CDVPlugin

-(void) watch:(CDVInvokedUrlCommand*) command;
-(void) dismissPlayer;

@property (strong,nonatomic) CDVInvokedUrlCommand* lastCommand;

@end
