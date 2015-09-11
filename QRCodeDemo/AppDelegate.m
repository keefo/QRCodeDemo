//
//  AppDelegate.m
//  QRCodeDemo
//
//  Created by Xu Lian on 2015-09-10.
//  Copyright (c) 2015 Beyondcow. All rights reserved.
//

#import "AppDelegate.h"
#import "QREncoder.h"


@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.text = @"http://www.google.com";
}

- (void)setText:(NSString *)text
{
    _text = text;
    DataMatrix *qrMatrix = [QREncoder encodeWithECLevel:QR_ECLEVEL_H version:QR_VERSION_AUTO string:_text];
    NSImage *qrcodeImage = [QREncoder renderDataMatrix:qrMatrix imageDimension:512 withBgColor:0xFFFFFFFF withCodeColor:0xFF000000];
    if (qrcodeImage) {
        [_imageView setImage:qrcodeImage];
    }
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
