//
//  HomePresentrTests.m
//  YLFinalTaskTests
//
//  Created by Юлия Лопатина on 9/6/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HomePresentrt.h"

@interface HomePresentrTests : XCTestCase
@property (strong, nonatomic) HomePresentrt *presentr;
@end

@implementation HomePresentrTests

- (void)setUp {
    [super setUp];
    self.presentr = [[HomePresentrt alloc]initWithView:[HomeViewController new]];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testMethods {
    [self.presentr startLoading];
    [self.presentr fillModels];
}



@end
