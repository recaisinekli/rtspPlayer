# RtspPlayer
A simple cordova plugin to play rtsp on iOS thanks to VXG Video Player SDK.

Streaming stops after 2 minutes since free version of VXG SDK has limitation. Please contact videoexpertsgroup for full version.

This plugin is tested with Hikvision IP Camera.

## Installation

```cordova plugin add https://github.com/recaisinekli/rtspPlayer.git```


## Usage

``` javascript
cordova.plugins.rtspPlayer.watch("rtsp://username:password@10.0.0.100/video", callbackSuccess, callbackError);
```

## LICENSE
The MIT License (MIT)

Copyright (c) 2016 recai@sinekyazilim.com.tr Recai Sinekli

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.