//
//  StarPresenterTests.m
//  YLFinalTaskTests
//
//  Created by Юлия Лопатина on 9/6/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StarPresenter.h"

@interface StarPresenterTests : XCTestCase
@property (strong, nonatomic) StarPresenter *star;
@end

@implementation StarPresenterTests

- (void)setUp {
    [super setUp];
    self.star = [[StarPresenter alloc]initWithView:[StarViewController new]];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testNotNil {
    XCTAssertNotNil(self.star);
}

- (void)testMethods {
    [self.star startLoading];
    [self.star fillModels];
}


@end
