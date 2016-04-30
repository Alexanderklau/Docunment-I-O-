//
//  main.m
//  NSFileManager（管理文件）
//
//  Created by lwb on 16/4/30.
//  Copyright © 2016年 lwb. All rights reserved.
//- (BOOL)fileExistsAtPath:(NSString *)path;
//- (BOOL)fileExistsAtPath:(NSString *)path isDirectory:(nullable BOOL *)isDirectory;
//- (BOOL)isReadableFileAtPath:(NSString *)path;
//- (BOOL)isWritableFileAtPath:(NSString *)path;
//- (BOOL)isExecutableFileAtPath:(NSString *)path;
//- (BOOL)isDeletableFileAtPath:(NSString *)path;
//- (nullable NSDate *)fileCreationDate;
//- (nullable NSNumber *)fileOwnerAccountID;
//- (nullable NSNumber *)fileGroupOwnerAccountID;

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        NSLog(@"NSFileManagertest.m 是否存在:%d",[fm fileExistsAtPath:@"NSFileManagerTest.m"]);
        BOOL isDir;
        NSLog(@"NSFileManagertest.m 是否存在:%d",[fm fileExistsAtPath:@"NSFileManagerTest.m" isDirectory: &isDir]);
        NSLog(@"NSFileManagertest.m 是否为目录:%d",isDir);
        NSLog(@"NSFileManagertest.m 是否为可读文件:%d",[fm isReadableFileAtPath:@"NSFileManagerTest.m"]);
        NSLog(@"NSFileManagerTest.m 是否为可写文件:%d",[fm isWritableFileAtPath:@"NSFileManagerTest.m"]);
        NSLog(@"NSFileManagerTest.m 是否为可执行文件:%d",[fm isExecutableFileAtPath:@"NSFileManagerTest.m"]);
        NSLog(@"NSFileManagerTest.m 是否为可删除文件:%d",[fm isDeletableFileAtPath:@"NSFileManagerTest.m"]);
        NSArray *array = [fm componentsToDisplayForPath:@"NSFileManagerTest.m"];
        NSLog(@"-- NSFileManagerTest.m 所在路径为:--");
        for (NSObject* ele in array)
        {
            NSLog(@"%@ ,",ele);
        }
        NSDictionary *attr = [fm attributesOfItemAtPath:@"NSFileManagerTest.m" error:nil];
        NSLog(@"NSFileManagerTest.m的创建时间为: %@",[attr fileCreationDate]);
        NSLog(@"NSFileManagerTest.m的主账户为: %@",[attr fileOwnerAccountID]);
        NSLog(@"NSFileManagerTest.m的文件大小为:%@",[attr fileSize]);
        NSData *data = [fm contentsAtPath:@"NSFileManagerTest.m"];
        NSString *contet = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"-------输出文件内容-------");
        NSLog(@"%@",contet);
        
        
        
        
        
    }
    
    return 0;
}
