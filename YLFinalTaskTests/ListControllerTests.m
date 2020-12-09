//
//  ListControllerTests.m
//  YLFinalTaskTests
//
//  Created by Юлия Лопатина on 9/6/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ListViewController.h"

@interface ListControllerTests : XCTestCase
@property (strong, nonatomic) ListViewController *list;
@end

@implementation ListControllerTests

- (void)setUp {
    [super setUp];
    self.list = [ListViewController new];
    
}

- (void)tearDown {
    [super tearDown];
}

- (void)testNotNil {
    XCTAssertNotNil(self.list);
    
}

- (void)testController {
    [self.list viewDidLoad];

    
}



@end
