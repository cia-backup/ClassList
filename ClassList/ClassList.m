//
//  ClassList.m
//  ClassList
//
//  Created by Joe Amanse on 3/30/13.
//  Copyright (c) 2013 Chris Amanse. All rights reserved.
//

#import "ClassList.h"

@implementation ClassList
@synthesize myClassList;

- (id)init {
    self = [super init];
    if(self != nil) {
        myClassList = [[NSMutableDictionary alloc] init];
    }
    return self;
}

- (BOOL)addStudent:(NSMutableDictionary *)newStudent {
    if(newStudent != nil) {
        [myClassList setObject: newStudent forKey: [NSString stringWithFormat: @"%lu", [self numberOfStudents]]];
        return YES;
    }
    return NO;
}
- (BOOL)removeStudentAt:(int)index {
    NSString* key = [NSString stringWithFormat: @"%i", index];
    if([myClassList objectForKey: key] != nil) {
        [myClassList removeObjectForKey: key];
        
        //fill empty key
        NSMutableDictionary* holder;
        unsigned long max = [self numberOfStudents];
        for(int i = index + 1; i <= max; i++) {
            NSString* previousKey = [[NSString alloc] init];
            NSString* newKey = [[NSString alloc] init];
            previousKey = [NSString stringWithFormat: @"%i", i - 1];
            newKey = [NSString stringWithFormat: @"%i", i];
            
            holder = [[NSMutableDictionary alloc] init];
            holder = [myClassList objectForKey: newKey];
            [myClassList setObject: holder forKey: previousKey];
            [myClassList removeObjectForKey: newKey];
        }
        return YES;
    }
    return NO;
}
- (unsigned long)numberOfStudents {
    return (unsigned long)[myClassList count];
}

- (void)printInfo:(NSMutableDictionary *)newStudent {
    for(NSString* key in newStudent) {
        NSLog(@"\t%@:\t%@", key, [newStudent valueForKey: key]);
    }
    
    /*
    NSLog(@"\t  Last Name: %@", [newStudent valueForKey: @"lastname"]);
    NSLog(@"\tMiddle Name: %@", [newStudent valueForKey: @"middlename"]);
    NSLog(@"\t First Name: %@", [newStudent valueForKey: @"firstname"]);
    NSLog(@"\t  ID Number: %@", [newStudent valueForKey: @"idNumber"]);
    */
}

- (NSMutableDictionary*)studentAt:(int)index {
    return [myClassList objectForKey: [NSString stringWithFormat: @"%i", index]];
}

- (void)printStudentAt:(int)index {
    NSMutableDictionary* newStudent = [[NSMutableDictionary alloc] init];
    newStudent = [self studentAt: index];
    NSLog(@"Student at index: %i", index);
    [self printInfo: newStudent];
}
- (void)printAll {
    for(int i = 0; i <= [self numberOfStudents] - 1; i++) {
        NSMutableDictionary* newStudent = [[NSMutableDictionary alloc] init];
        newStudent = [self studentAt: i];
        NSLog(@"Key = %i", i);
        [self printInfo: newStudent];
    }
    
    //Writes myClassList dictionary to a file
    
    if([myClassList writeToFile: @"newSample.txt" atomically: YES]) {
        NSLog(@"File written");
    }
    
}

- (void)removeAll {
    [myClassList removeAllObjects];
}
@end
