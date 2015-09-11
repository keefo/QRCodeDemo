//
//  AppDelegate.h
//  QRCodeDemo
//
//  Created by Xu Lian on 2015-09-10.
//  Copyright (c) 2015 Beyondcow. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property(retain, nonatomic) NSString *text;
@property(assign) IBOutlet NSImageView *imageView;
@property(assign) IBOutlet NSTextField *textField;

@end

