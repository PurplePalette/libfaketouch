// Edited by PurplePalette on 2023/11/12.
// Copyright © 2023年 PurplePalette. All rights reserved.
//
//  FakeTouch.h
//  FakeTouch
//
//  Created by PugaTang on 16/4/7.
//  Copyright © 2016年 PugaTang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MyPTFakeMetaTouch.h"

#ifdef DEBUG
#define RLog(fmt, ...)
#define DLog(fmt, ...) NSLog((@"PThelper   " fmt), ##__VA_ARGS__);
#else
#define DLog(fmt, ...)
#define RLog(fmt, ...) NSLog((@"PThelper   " fmt), ##__VA_ARGS__);
#endif
