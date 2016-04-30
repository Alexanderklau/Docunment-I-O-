//
//  main.m
//  NSMutable(读写)
//
//  Created by lwb on 16/4/30.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.sina.com.cn"]];
        //使用了NSDate读取了网页数据
        NSLog(@"%1d",[data length]);
        char buffer[100];
        [data getBytes:buffer range:NSMakeRange(103, 100)];
        NSLog(@"%S",buffer);
        NSString *content = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"-------output content --------");
        NSLog(@"%@",content);
    }
    return 0;
}
