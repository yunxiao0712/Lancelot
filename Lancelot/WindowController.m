//
//  WindowController.m
//  Lancelot
//
//  Created by apple on 2017/10/10.
//  Copyright © 2017年 LANOON. All rights reserved.
//

#import "WindowController.h"
#import "Masonry.h"

@interface WindowController ()

@end

@implementation WindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    //设置为点击背景可以移动窗口
    [self.window setMovableByWindowBackground:YES];
    self.window.titlebarAppearsTransparent = YES;
    self.window.titleVisibility = NSWindowTitleHidden;
//    self.window.contentView.frame = CGRectMake(0, 0, 0, 500);
//    self.window.alphaValue = 0.95f;
//    self.window.backgroundColor = [NSColor blackColor];
    
    //初始化一下
    [self windowResizeAction];
    
    //监听窗口变化
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(windowResizeAction) name:NSWindowDidResizeNotification object:nil];
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)windowResizeAction{
    //获取到windows的主视图
    NSView * themeView = self.window.contentView.superview;
    //根据层级结构获取到标题栏视图
    NSView * titleView = themeView.subviews.count > 1?themeView.subviews[1]:nil;
    titleView.autoresizesSubviews = YES;
    
    //重新对标题栏视图的尺寸进行布局，使得系统的功能按钮出现在自定义标题中的竖直中间
    [titleView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@10);
        make.width.equalTo(@70);
        make.top.equalTo(@8);
        make.height.equalTo(@22);
    }];
}

@end
