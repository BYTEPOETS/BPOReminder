//
//  BPOReminder.m
//  BPOReminder
//
//  Copyright (c) 2014 BYTEPOETS GmbH. All rights reserved.
//

#import "BPOReminder.h"

@implementation BPOReminder

#pragma mark - init BPOReminder

- (id)init {
    self = [super init];
    if (self) {
        self.message = @"You have to set a message!";
        self.remindInSeconds = @10;
        self.notificationID = @"com.bytepoets.BPOReminder";
    }
    return self;
}

#pragma mark - LocalNotification

- (void)scheduleLocalReminder {
    UILocalNotification *localReminder = [[UILocalNotification alloc] init];
    localReminder.fireDate = self.scheduleNotificationDate;
    localReminder.alertBody = self.message;
    localReminder.userInfo = @{@"id" : self.notificationID};
    
    [self cancelLocalNotificationWithID:self.notificationID];
    
    [[UIApplication sharedApplication] scheduleLocalNotification:localReminder];
}

- (void)cancelLocalNotificationWithID:(NSString *)notificationID {
    UIApplication *curApp = [UIApplication sharedApplication];
    NSArray *allScheduledLocalNotifications = [curApp scheduledLocalNotifications];
    
    for (UILocalNotification *curNotification in allScheduledLocalNotifications) {
        NSString *curNotificationID = [NSString stringWithFormat:@"%@", [curNotification.userInfo valueForKey:@"id"]];
        if ([curNotificationID isEqualToString:notificationID]) {
            [curApp cancelLocalNotification:curNotification];
        }
    }
}

#pragma mark - Date

- (NSDate *)scheduleNotificationDate {
    NSDate *scheduleDate = [NSDate date];
    scheduleDate = [scheduleDate dateByAddingTimeInterval:self.remindInSeconds.integerValue];
    return scheduleDate;
}

@end
