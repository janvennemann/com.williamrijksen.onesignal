//
//  OneSignalHelper.m
//  com.williamrijksen.onesignal
//
//  Created by William Rijksen on 27-03-18.
//

#import "OneSignalHelper.h"
#import <objc/runtime.h>

@implementation OneSignalHelper

+ (NSDictionary *)toDictionary: (OSNotificationPayload *)payload
{
    return @{@"notificationID": payload.notificationID,
             @"templateID": payload.templateID,
             @"templateName": payload.templateName,
             @"contentAvailable": @(payload.contentAvailable),
             @"mutableContent": @(payload.mutableContent),
             @"category": payload.category,
             @"badge": @(payload.badge),
             @"sound": payload.sound,
             @"title": payload.title,
             @"subtitle": payload.subtitle,
             @"body": payload.body,
             @"launchURL": payload.launchURL
    };
}

@end