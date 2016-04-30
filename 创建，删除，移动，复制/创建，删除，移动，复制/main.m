//
//  main.m
//  创建，删除，移动，复制
//
//  Created by lwb on 16/4/30.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        [fm createDirectoryAtPath:@"xyz/abc" withIntermediateDirectories:YES attributes:nil error:nil];
        NSString *contene = @"Is my book!";
        [fm createFileAtPath:@"myInfo.txt" contents:[contene dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
        [fm copyItemAtPath:@"myInfo.txt" toPath:@"copyInfo.txt" error:nil];
    }
    return 0;
}
