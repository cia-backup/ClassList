//
//  StudentInfo.m
//  ClassList
//
//  Created by Joe Amanse on 3/30/13.
//  Copyright (c) 2013 Chris Amanse. All rights reserved.
//

#import "StudentInfo.h"

@implementation StudentInfo

- (void)printInfo {
    NSLog(@"  Last Name: %@", lastname);
    NSLog(@"Middle Name: %@", middlename);
    NSLog(@" First Name: %@", firstname);
    NSLog(@"  ID Number: %@", idNumber);
    
}

- (void)saveInfo {
    info = [[NSMutableDictionary alloc] init];
    [info setObject: lastname forKey: @"lastname"];
    [info setObject: middlename forKey: @"middlename"];
    [info setObject: firstname forKey: @"firstname"];
    [info setObject: idNumber forKey: @"idnumber"];
}

- (void)storeInfo {
    lastname = [info objectForKey: @"lastname"];
}
@synthesize lastname, middlename, firstname, idNumber;
@synthesize info;

@end
