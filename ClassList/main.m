//
//  main.m
//  ClassList
//
//  Created by Joe Amanse on 3/30/13.
//  Copyright (c) 2013 Chris Amanse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassList.h"

int main(int argc, const char * argv[])
{
    NSLog(@"Class List:");
    //StudentInfo* student = [[StudentInfo alloc] init];
    ClassList* myClass = [[ClassList alloc] init];
    
    //populate myClassList dictionary from file
    myClass.myClassList = [myClass.myClassList initWithContentsOfFile: @"sample.txt"];
    
    NSMutableDictionary* student = [[NSMutableDictionary alloc] init];
    [student setObject: @"Joe" forKey: @"firstname"];
    [student setObject: @"Imperial" forKey: @"middlename"];
    [student setObject: @"Smith" forKey: @"lastname"];
    [student setObject: @"104235" forKey: @"idNumber"];
    [myClass addStudent: student];
    
    //[myClass printStudentAt: 0];
    
    //[myClass removeStudentAt: 0];
    
    //number of students in class
    NSLog(@"No. of students: %lu", [myClass numberOfStudents]);
    
    //Print all students in class
    [myClass printAll];
    
    return 0;
}

