//
//  Hour12Tests.swift
//  
//
//  Created by Jean Raphael Bordet  on 24/04/22.
//

import XCTest
@testable import TimeInWords

class Hour12Tests: XCTestCase {

    func testHour12() {
        XCTAssertEqual(
            time12(10, minutes: 0).hour.shour12,
            "ten"
        )
        
        XCTAssertEqual(
            time12(13, minutes: 0).hour.shour12,
            "one"
        )
        
        XCTAssertEqual(
            time12(14, minutes: 0).hour.shour12,
            "two"
        )
        
        XCTAssertEqual(
            time12(15, minutes: 0).hour.shour12,
            "three"
        )
        
        XCTAssertEqual(
            time12(16, minutes: 0).hour.shour12,
            "four"
        )
        
        XCTAssertEqual(
            time12(17, minutes: 0).hour.shour12,
            "five"
        )
        
        XCTAssertEqual(
            time12(18, minutes: 0).hour.shour12,
            "six"
        )
        
        XCTAssertEqual(
            time12(19, minutes: 0).hour.shour12,
            "seven"
        )
        
        XCTAssertEqual(
            time12(20, minutes: 0).hour.shour12,
            "eight"
        )
        
        XCTAssertEqual(
            time12(21, minutes: 0).hour.shour12,
            "nine"
        )
        
        XCTAssertEqual(
            time12(22, minutes: 0).hour.shour12,
            "ten"
        )
        
        XCTAssertEqual(
            time12(23, minutes: 0).hour.shour12,
            "eleven"
        )
        
        XCTAssertEqual(
            time12(24, minutes: 0).hour.shour12,
            "twelve"
        )
    }

}
