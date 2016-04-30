//
//  main.m
//  NSFileHandle处理文件IO
//
//  Created by lwb on 16/4/30.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileHandle *fh = [NSFileHandle fileHandleForReadingAtPath:@"NSFilehandleTest.m"];
        NSData *data;
        while ([(data = [fh readDataOfLength:512]) length] > 0) {
            NSLog(@"%1d",[data length]);
            NSString *content = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"------输出读取的512字节的内容-------");
            NSLog(@"%@",content);
        }
        [fh closeFile];
        NSFileHandle *fh2 = [NSFileHandle fileHandleForReadingAtPath:@"abc.txt"];
        if (!fh2) {
            NSFileManager *fm = [NSFileManager defaultManager];
            [fm createFileAtPath:@"abc.txt" contents:nil attributes:nil];
            fh2 = [NSFileHandle fileHandleForWritingAtPath:@"abc.txt"];
        }
        NSString *mybook = @"English!";
        [fh2 writeData:[mybook dataUsingEncoding:NSUTF8StringEncoding]];
        [fh2 closeFile];
    }
    return 0;
}
