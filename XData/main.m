//
//  main.c
//  XData
//
//  Created by Maxwin on 13-10-18.
//  Copyright (c) 2013年 nju. All rights reserved.
//

#include <CoreFoundation/CoreFoundation.h>
#import "XData.h"

int main(int argc, const char * argv[])
{
    NSDictionary *studentJSON = @{@"name": @"Maxwin", @"age": @(30)};
    XStudent *student = [[XStudent alloc] initWithJSON:studentJSON];
    NSLog(@"%@", student);
    
    student.age = 20;
    NSLog(@"%@", student);
    
    return 0;
}

