//
//  ViewController.m
//  RTSP Player
//
//  Created by Recai Sinekli on 01/07/16.
//  Copyright © 2016 Recai Sinekli. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    MediaPlayer *player;
    UIActivityIndicatorView *_activityIndicatorView;
}


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle: UIActivityIndicatorViewStyleWhiteLarge];
    _activityIndicatorView.center = self.view.center;
    _activityIndicatorView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    
    [self.view addSubview:_activityIndicatorView];
    [_activityIndicatorView startAnimating];
    
    CGSize size = self.view.bounds.size;
    player = [[MediaPlayer alloc] init:CGRectMake(0, 0, size.width, size.height)];
    UIView *frameView = [player contentView];
    [self.view insertSubview:frameView atIndex:0];
    MediaPlayerConfig* config = [[MediaPlayerConfig alloc] init];
    config.connectionUrl = self.videoAddress;
    config.decodingType =1;
    config.numberOfCPUCores = 2;
    config.enableAudio = 1;
    [player Open:config callback:self];
}
- (IBAction)closeApp:(id)sender {
    [self.origem dismissPlayer];
    [player close];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int) OnReceiveData: (MediaPlayer*)player
              buffer: (void*)buffer
                size: (int) size
                 pts: (long) pts
{
    
    NSLog(@"OnReceiveData called");
    return 0;
}

- (int) OnReceiveSubtitleString: (MediaPlayer*)player
                           data: (NSString*)data
                       duration: (uint64_t)duration
{
    
    NSLog(@"OnReceiveSubtitleString called: %@, %llu", data, duration);
    return 0;
}

- (int) Status: (MediaPlayer*)player1
          args: (int)arg
{
    NSLog(@"Status called: arg code is %d for instance %@", arg, player1);
    switch(arg)
    {
        case PLP_BUILD_STARTING:
        {
            dispatch_async(dispatch_get_main_queue(), ^
                           {
                               [_activityIndicatorView startAnimating];
                           });
            break;
        }
        case PLP_PLAY_SUCCESSFUL:
        {
            dispatch_async(dispatch_get_main_queue(), ^
                           {
                               [_activityIndicatorView stopAnimating];
                               
                               
                           });
            break;
        }
    }

    return 0;
}

@end
