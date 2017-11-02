//
//  AppDelegate.h
//  Lancelot
//
//  Created by apple on 2017/10/10.
//  Copyright © 2017年 LANOON. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;


@end

