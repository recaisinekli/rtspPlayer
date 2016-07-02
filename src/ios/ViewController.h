//
//  ViewController.h
//  RTSP Player
//
//  Created by Recai Sinekli on 01/07/16.
//  Copyright © 2016 Recai Sinekli. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "M3U8.h"
#import "MediaPlayer.h"
#import "MediaPlayerConfig.h"
#import "Thumbnailer.h"
#import "ThumbnailerConfig.h"
#import "rtspPlayer.h"

@class rtspPlayer;

@interface ViewController : UIViewController<MediaPlayerCallback>{

}

@property (retain, nonatomic) rtspPlayer* origem;
@property (retain, nonatomic) NSString* videoAddress;

@end

