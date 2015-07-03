//
//  StackNodeOfTests.swift
//  Algorithms-Swift
//
//  Created by Serjo on 19/06/15.
//  Copyright © 2015 Serjo. All rights reserved.
//

import XCTest


class StackNodeOfTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_EmptyStack_True(){
        
        let stack = StackNodeOf<Int>()
        XCTAssert(stack.isEmpty)
    }
    
    func test_PopEmptyStack_None() {
        
        let stack = StackNodeOf<Int>()
        let item = stack.pop()
        XCTAssert(item == nil)
    }
    
    func test_PushEmtpyStack_Ok(){
        
        let stack = StackNodeOf<Int>()
        stack.push(1)
        stack.push(2)
        
        XCTAssert(stack.count == 2);
        
    }
    
    func testPerformanceExample() {
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}

