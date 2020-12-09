//
//  LoaderTests.m
//  YLFinalTaskTests
//
//  Created by Юлия Лопатина on 9/6/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Loader.h"
#import "JSONParser.h"

@interface LoaderTests : XCTestCase
@property (strong, nonatomic) Loader *loader;
@property (strong, nonatomic) JSONParser *parser;

@end

@implementation LoaderTests

- (void)setUp {
    [super setUp];
    self.loader = [[Loader alloc]initWithParser:self.parser];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testNotNil {
    XCTAssertNotNil(self.loader);
}

- (void) testSession {
    [self.loader session];
}


@end
