#import "Source/MyPTFakeTouch.h"
#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
#include <stdlib.h>

static void didFinishLaunching(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef info) {
  NSLog(@"FakeTouch: loaded");
}

%ctor {
  CFNotificationCenterAddObserver(CFNotificationCenterGetLocalCenter(), NULL, &didFinishLaunching, (CFStringRef)UIApplicationDidFinishLaunchingNotification, NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
}
