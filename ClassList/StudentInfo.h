//
//  StudentInfo.h
//  ClassList
//
//  Created by Joe Amanse on 3/30/13.
//  Copyright (c) 2013 Chris Amanse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StudentInfo : NSObject {
    NSString* lastname;
    NSString* middlename;
    NSString* firstname;
    NSNumber* idNumber;
    NSMutableDictionary* info;
}

- (void)printInfo;
- (void)saveInfo;
- (void)storeInfo;
@property (retain) NSString* lastname;
@property (retain) NSString* middlename;
@property (retain) NSString* firstname;
@property (retain) NSNumber* idNumber;
@property (retain) NSMutableDictionary* info;
@end
