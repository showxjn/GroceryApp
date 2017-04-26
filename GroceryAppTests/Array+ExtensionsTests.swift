//
//  Array+ExtensionsTests.swift
//  GroceryApp
//
//  Created by showxjn on 17/4/26.
//  Copyright © 2017年 Ceshidudian. All rights reserved.
//

import XCTest
@testable import GroceryApp

class Array_ExtensionsTest: XCTestCase {
	var subject: [String]!
	
	override func setUp() {
		super.setUp()
		
		subject = ["A", "B", "C"]
	}
	
	func testShouldGetTheCorrectValue() {
		let index = 1
		
		let result = subject.value(at: index)
		
		XCTAssertEqual("B", result)
	}
	
	func testShouldGetNilForAnIndexBeyondEndIndex() {
		let index = 30
		
		let result = subject.value(at: index)
		
		XCTAssertNil(result)
	}
	
	func testShouldGetNilForAnIndexLessThanZero() {
		let index = -5
		
		let result = subject.value(at: index)
		
		XCTAssertNil(result)
	}
}
