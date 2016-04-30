//
//  main.m
//  NSProcessInfo(获取进程)
//
//  Created by lwb on 16/4/30.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSProcessInfo *proInfo = [NSProcessInfo processInfo];
        NSArray *arr = [proInfo arguments];
        NSLog(@"运行程序的参数: %@",arr);
        NSLog(@"进程标识符： %d",[proInfo processIdentifier]);
        NSLog(@"进程名为: %@",[proInfo processName]);
        NSLog(@"所在系统主机名为: %@",[proInfo hostName]);
        NSLog(@"进程所在系统:%1d",[proInfo operatingSystem]);
        NSLog(@"操作系统名: %@",[proInfo operatingSystemName]);
        NSLog(@"系统版本字符串为:%@",[proInfo operatingSystemVersionString]);
        NSLog(@"物理内存为: %11d",[proInfo physicalMemory]);
        NSLog(@"处理器数量: %1d",[proInfo activeProcessorCount]);
        NSLog(@"进程所在系统运行时间: %f",[proInfo systemUptime]);
        
        
        
        
        
    }
    return 0;
}
