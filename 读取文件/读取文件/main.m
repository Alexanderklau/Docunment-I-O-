//
//  main.m
//  读取文件
//
//  Created by lwb on 16/5/4.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dict = [NSKeyedUnarchiver unarchiveObjectWithFile:@"mydict.archive"];
        NSLog(@"Objective-C对应的Value: %@",[dict valueForKey:@"Objective-C"]);
        NSLog(@"Ruby对应的value: %@",[dict valueForKey:@"Ruby"]);
    }
    return 0;
}
