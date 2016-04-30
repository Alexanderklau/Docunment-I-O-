//
//  main.m
//  NSBundle处理相关资源
//
//  Created by lwb on 16/4/30.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSURL *url = [NSURL URLWithString:@"http://www.bilibili.com"];
        NSLog(@"Url 的 acheme 为:%@",[url scheme]);
        NSLog(@"Url 的 host 为:%@",[url host]);
        NSLog(@"Url 的 port 为:%@",[url port]);
        NSLog(@"Url 的 path 为:%@",[url path]);
        
        NSString *homepage = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@",homepage);
        
        
    }
    return 0;
}
