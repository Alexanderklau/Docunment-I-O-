//
//  main.m
//  对象归档
//
//  Created by lwb on 16/5/4.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:89], @"OBject - C",
                              [NSNumber numberWithBool:69],@"Ruby",
                              [NSNumber numberWithBool:75],@"Python",
                              [NSNumber numberWithBool:109],@"Perl,nil",nil];
        [NSKeyedArchiver archiveRootObject:dict toFile:@"MyDict.archive"];
                              
        
    }
    return 0;
}
