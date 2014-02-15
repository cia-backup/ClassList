//
//  ClassList.h
//  ClassList
//
//  Created by Joe Amanse on 3/30/13.
//  Copyright (c) 2013 Chris Amanse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassList : NSObject {
    NSMutableDictionary* myClassList;
}

@property (retain) NSMutableDictionary* myClassList;

- (id)init;
- (BOOL)addStudent: (NSMutableDictionary*)newStudent;
- (BOOL)removeStudentAt: (int)index;
- (unsigned long)numberOfStudents;
- (NSMutableDictionary*)studentAt: (int)index;
- (void)printInfo: (NSMutableDictionary*)newStudent;
- (void)printStudentAt: (int)index;
- (void)printAll;
- (void)removeAll;
@end
