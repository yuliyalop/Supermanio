//
//  DetailControllerTests.m
//  YLFinalTaskTests
//
//  Created by Юлия Лопатина on 9/6/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DetailViewController.h"

@interface DetailControllerTests : XCTestCase
@property (strong, nonatomic) DetailViewController *detail;
@end

@implementation DetailControllerTests

- (void)setUp {
    [super setUp];
    self.detail = [DetailViewController new];
}

- (void)tearDown {
    [super tearDown];
}

////- (void)testNotNil {
////    XCTAssertNil(self.detail);
//}

- (void)testForMethods {
    [self.detail viewDidLoad];
    [self.detail didTapLikeInController];
    [self.detail didTapDislike];
}

@end
