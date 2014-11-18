//
//  BPOReminder.h
//  BPOReminder
//
//  Copyright (c) 2014 BYTEPOETS GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BPOReminder : NSObject

/// set the message the user will see when the notifcation is fired
@property (nonatomic, strong) NSString *message;
/// the time in seconds when the notification will fire
@property (nonatomic, strong) NSNumber *remindInSeconds;
/// the id of the notification, should be unique
@property (nonatomic, strong) NSString *notificationID;

/// creates a local notification with the setup parameters, cancels the before scheduled notifcation with the same notificationID
-(void)scheduleLocalReminder;

@end
