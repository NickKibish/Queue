//
//  QueueTests.swift
//  NKQueue_Tests
//
//  Created by Mykola Kibysh on 6/26/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import NKQueue

class QueueTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testEnqueue() {
        var queue = Queue<Int>()
        queue.enqueue(element: 1)
        queue.enqueue(element: 2)
        
        let element1 = queue.dequeue()
        let element2 = queue.dequeue()
        XCTAssertEqual(element1, 1)
        XCTAssertEqual(element2, 2)
    }
    
    func testSize() {
        var queue = Queue<Int>()
        queue.enqueue(element: 10)
        XCTAssertEqual(queue.size, 1)
        queue.enqueue(element: 20)
        XCTAssertEqual(queue.size, 2)
    }
    
    func testIsEmpty() {
        var queue = Queue<Int>()
        XCTAssertEqual(queue.isEmpty, true)
        queue.enqueue(element: 1)
        XCTAssertEqual(queue.isEmpty, false)
        queue.enqueue(element: 2)
        XCTAssertEqual(queue.isEmpty, false)
        queue.dequeue()
        XCTAssertEqual(queue.isEmpty, false)
        queue.dequeue()
        XCTAssertEqual(queue.isEmpty, true)
    }
    
}
