//
//  ViewController.h
//  Lancelot
//
//  Created by apple on 2017/10/10.
//  Copyright © 2017年 LANOON. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ContentMenuViewController.h"

@interface ViewController : NSViewController
@property (weak) IBOutlet NSVisualEffectView *TitleView;
@property (weak) IBOutlet NSVisualEffectView *ContentView;
@property (weak) IBOutlet NSView *customMenuView;

@end

