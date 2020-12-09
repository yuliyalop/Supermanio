//
//  FirstScreenTests.m
//  YLFinalTaskTests
//
//  Created by Юлия Лопатина on 9/6/20.
//  Copyright © 2020 Юлия Лопатина. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FirstScreenViewController.h"

@interface FirstScreenTests : XCTestCase
@property (strong, nonatomic) FirstScreenViewController *firstController;
@end

@implementation FirstScreenTests

- (void)setUp {
    [super setUp];
    self.firstController = [FirstScreenViewController new];
    NSLog(@"!!!!!!!!!! setup");
}

- (void)tearDown {
    [super tearDown];
}


- (void) testNotNil {
    XCTAssertNotNil(self.firstController);
    NSLog (@"Not Nil");
}

- (void) testButton {
    [self.firstController startTapped:self.firstController];
}


@end
