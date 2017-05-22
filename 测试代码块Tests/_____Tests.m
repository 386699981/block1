//
//  _____Tests.m
//  测试代码块Tests
//
//  Created by Soundnet on 16/6/25.
//  Copyright © 2016年 Soundnet. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface _____Tests : XCTestCase

@end

@implementation _____Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//- (void)testExample {
//    // This is an example of a functional test case.
//    // Use XCTAssert and related functions to verify your tests produce the correct results.
//    
////    XCTAssert(1,@"can not 0");
//}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

-(void)testTrue
{
    NSLog(@"11111");
//    XCTAssertEqual(1, 2, @"a1 = a2 shoud be true"); // 无法通过测试
//    XCTAssertEqual(1, 1, @"a1 = a2 shoud be true"); // 通过测试  
}

@end
