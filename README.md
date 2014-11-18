BPOReminder
===

BPOReminder schedules local notifications after a given period of time.
You can use it to remind your users to come back to your app.

Usage
---

You have to register for Push Notifications in order to use this functionallity

iOS8:

```
[UIApplication.sharedApplication registerUserNotificationSettings:[UIUserNotificationSettings 
settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge) 
categories:nil]];
[UIApplication.sharedApplication registerForRemoteNotifications];
```
An than call the BPOReminder with your notification e.g:

```
- (void)applicationDidEnterBackground:(UIApplication *)application {
	BPOReminder *reminder = BPOReminder.alloc.init;
	reminder.message = NSLocalizedString(@"Hey - you haven't used our app for a long time. Why don't you come back?", nil);
	reminder.remindInSeconds = @10;
	reminder.notificationID = @"reminder";
	[reminder scheduleLocalReminder];
}
```

Requirements
---

Requires ARC
Tested with iOS 7.0 and iOS 8.0

License
---

```
The MIT License (MIT)

Copyright (c) 2014 BYTEPOETS GmbH

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 
```