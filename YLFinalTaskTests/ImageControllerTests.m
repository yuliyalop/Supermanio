//
//  ImageControllerTests.m
//  YLFinalTaskTests
//
//  Created by Юлия Лопатина on 9/6/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ImageViewController.h"

@interface ImageControllerTests : XCTestCase
@property (strong, nonatomic) ImageViewController *image;
@end

@implementation ImageControllerTests

- (void)setUp {
    [super setUp];
    self.image = [[ImageViewController alloc]initWithModel:[CellViewModel new]];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testNotNil {
    XCTAssertNotNil(self.image);
}

- (void)testForMethods {
    [self.image viewDidLoad];
}

@end
