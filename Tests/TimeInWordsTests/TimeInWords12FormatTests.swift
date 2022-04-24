//
//  TimeInWords12FormatTests.swift
//  
//
//  Created by Jean Raphael Bordet  on 24/04/22.
//

import XCTest
@testable import TimeInWords

final class TimeInWords12FormatTests: XCTestCase {
    
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
    
    func testOClock() throws {
        let result = time12(10, minutes: 0)
        
        XCTAssertEqual(result.hour, WordNumber.ten)
        XCTAssertEqual(result.minutes, WordNumber.zero)
        XCTAssertEqual(result.accessory, .o_clock)
    }
    
    func testPastFive() throws {
        let result_1 = time12(10, minutes: 1)
        
        XCTAssertEqual(result_1.hour, WordNumber.ten)
        XCTAssertEqual(result_1.minutes, WordNumber.zero)
        XCTAssertEqual(result_1.accessory, .o_clock)
        
        let result_3 = time12(10, minutes: 3)
        
        XCTAssertEqual(result_3.hour, WordNumber.ten)
        XCTAssertEqual(result_3.minutes, WordNumber.zero)
        XCTAssertEqual(result_3.accessory, .o_clock)
        
        let result_5 = time12(10, minutes: 5)
        
        XCTAssertEqual(result_5.minutes, WordNumber.five)
        XCTAssertEqual(result_5.accessory, .past)
        XCTAssertEqual(result_5.hour, WordNumber.ten)
    }
    
    func testPastTen() throws {
        let result_1 = time12(18, minutes: 10)
        
        XCTAssertEqual(result_1.minutes, WordNumber.ten)
        XCTAssertEqual(result_1.accessory, .past)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")
        
        let result_2 = time12(18, minutes: 13)
        
        XCTAssertEqual(result_2.minutes, WordNumber.ten)
        XCTAssertEqual(result_2.accessory, .past)
        XCTAssertEqual(result_2.hour, WordNumber.six)
        
        XCTAssertEqual(result_2.hour.shour12, "six")
    }
    
    func testQuarter() throws {
        let result_1 = time12(18, minutes: 15)
        
        XCTAssertEqual(result_1.minutes, WordNumber.fifteen)
        XCTAssertEqual(result_1.accessory, .quarter_past)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")
        
        let result_2 = time12(18, minutes: 17)
        
        XCTAssertEqual(result_2.minutes, WordNumber.fifteen)
        XCTAssertEqual(result_2.accessory, .quarter_past)
        XCTAssertEqual(result_2.hour, WordNumber.six)
        
        XCTAssertEqual(result_2.hour.shour12, "six")
        
        let result_3 = time12(18, minutes: 19)
        
        XCTAssertEqual(result_3.minutes, WordNumber.fifteen)
        XCTAssertEqual(result_3.accessory, .quarter_past)
        XCTAssertEqual(result_3.hour, WordNumber.six)
        
        XCTAssertEqual(result_3.hour.shour12, "six")
    }
    
    func testPastTwenty() throws {
        let result_1 = time12(18, minutes: 20)
        
        XCTAssertEqual(result_1.minutes, WordNumber.twenty)
        XCTAssertEqual(result_1.accessory, .past)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")
        
        let result_2 = time12(18, minutes: 21)
        
        XCTAssertEqual(result_2.minutes, WordNumber.twenty)
        XCTAssertEqual(result_2.accessory, .past)
        XCTAssertEqual(result_2.hour, WordNumber.six)
        
        XCTAssertEqual(result_2.hour.shour12, "six")
        
        let result_3 = time12(18, minutes: 24)
        
        XCTAssertEqual(result_3.minutes, WordNumber.twenty)
        XCTAssertEqual(result_3.accessory, .past)
        XCTAssertEqual(result_3.hour, WordNumber.six)
        
        XCTAssertEqual(result_3.hour.shour12, "six")
    }
    
    func testPastTwentyFive() throws {
        let result_1 = time12(18, minutes: 25)
        
        XCTAssertEqual(result_1.minutes, WordNumber.twenty_five)
        XCTAssertEqual(result_1.accessory, .past)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")
        
        let result_2 = time12(18, minutes: 27)
        
        XCTAssertEqual(result_2.minutes, WordNumber.twenty_five)
        XCTAssertEqual(result_2.accessory, .past)
        XCTAssertEqual(result_2.hour, WordNumber.six)
        
        XCTAssertEqual(result_2.hour.shour12, "six")
        
        let result_3 = time12(18, minutes: 29)
        
        XCTAssertEqual(result_3.minutes, WordNumber.twenty_five)
        XCTAssertEqual(result_3.accessory, .past)
        XCTAssertEqual(result_3.hour, WordNumber.six)
        
        XCTAssertEqual(result_3.hour.shour12, "six")
    }
    
    func testHalfPast() throws {
        let result_1 = time12(18, minutes: 30)
        
        XCTAssertEqual(result_1.minutes, WordNumber.thirty)
        XCTAssertEqual(result_1.accessory, .half)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")
        
        let result_2 = time12(18, minutes: 32)

        XCTAssertEqual(result_2.minutes, WordNumber.thirty)
        XCTAssertEqual(result_2.accessory, .half)
        XCTAssertEqual(result_2.hour, WordNumber.six)

        XCTAssertEqual(result_2.hour.shour12, "six")

        let result_3 = time12(18, minutes: 34)

        XCTAssertEqual(result_3.minutes, WordNumber.thirty)
        XCTAssertEqual(result_3.accessory, .half)
        XCTAssertEqual(result_3.hour, WordNumber.six)

        XCTAssertEqual(result_3.hour.shour12, "six")
    }
    
    func testTwentyFiveTo() throws {
        let result_1 = time12(18, minutes: 35)
        
        XCTAssertEqual(result_1.minutes, WordNumber.twenty_five)
        XCTAssertEqual(result_1.accessory, .to)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")

        let result_2 = time12(18, minutes: 37)

        XCTAssertEqual(result_2.minutes, WordNumber.twenty_five)
        XCTAssertEqual(result_2.accessory, .to)
        XCTAssertEqual(result_2.hour, WordNumber.six)

        XCTAssertEqual(result_2.hour.shour12, "six")

        let result_3 = time12(18, minutes: 39)

        XCTAssertEqual(result_3.minutes, WordNumber.twenty_five)
        XCTAssertEqual(result_3.accessory, .to)
        XCTAssertEqual(result_3.hour, WordNumber.six)

        XCTAssertEqual(result_3.hour.shour12, "six")
    }
    
    func testTwentyTo() throws {
        let result_1 = time12(18, minutes: 40)
        
        XCTAssertEqual(result_1.minutes, WordNumber.twenty)
        XCTAssertEqual(result_1.accessory, .to)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")

        let result_2 = time12(18, minutes: 42)

        XCTAssertEqual(result_2.minutes, WordNumber.twenty)
        XCTAssertEqual(result_2.accessory, .to)
        XCTAssertEqual(result_2.hour, WordNumber.six)

        XCTAssertEqual(result_2.hour.shour12, "six")

        let result_3 = time12(18, minutes: 44)

        XCTAssertEqual(result_3.minutes, WordNumber.twenty)
        XCTAssertEqual(result_3.accessory, .to)
        XCTAssertEqual(result_3.hour, WordNumber.six)

        XCTAssertEqual(result_3.hour.shour12, "six")
    }
    
    func testQuarterTo() throws {
        let result_1 = time12(18, minutes: 45)
        
        XCTAssertEqual(result_1.minutes, WordNumber.fifteen)
        XCTAssertEqual(result_1.accessory, .quarter_to)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")

        let result_2 = time12(18, minutes: 47)

        XCTAssertEqual(result_2.minutes, WordNumber.fifteen)
        XCTAssertEqual(result_2.accessory, .quarter_to)
        XCTAssertEqual(result_2.hour, WordNumber.six)

        XCTAssertEqual(result_2.hour.shour12, "six")

        let result_3 = time12(18, minutes: 49)

        XCTAssertEqual(result_3.minutes, WordNumber.fifteen)
        XCTAssertEqual(result_3.accessory, .quarter_to)
        XCTAssertEqual(result_3.hour, WordNumber.six)

        XCTAssertEqual(result_3.hour.shour12, "six")
    }
    
    func testTenTo() throws {
        let result_1 = time12(18, minutes: 50)
        
        XCTAssertEqual(result_1.minutes, WordNumber.ten)
        XCTAssertEqual(result_1.accessory, .to)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")

        let result_2 = time12(18, minutes: 52)

        XCTAssertEqual(result_2.minutes, WordNumber.ten)
        XCTAssertEqual(result_2.accessory, .to)
        XCTAssertEqual(result_2.hour, WordNumber.six)

        XCTAssertEqual(result_2.hour.shour12, "six")

        let result_3 = time12(18, minutes: 54)

        XCTAssertEqual(result_3.minutes, WordNumber.ten)
        XCTAssertEqual(result_3.accessory, .to)
        XCTAssertEqual(result_3.hour, WordNumber.six)

        XCTAssertEqual(result_3.hour.shour12, "six")
    }
    
    func testFiveTo() throws {
        let result_1 = time12(18, minutes: 55)
        
        XCTAssertEqual(result_1.minutes, WordNumber.five)
        XCTAssertEqual(result_1.accessory, .to)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")

        let result_2 = time12(18, minutes: 57)

        XCTAssertEqual(result_2.minutes, WordNumber.five)
        XCTAssertEqual(result_2.accessory, .to)
        XCTAssertEqual(result_2.hour, WordNumber.six)

        XCTAssertEqual(result_2.hour.shour12, "six")

        let result_3 = time12(18, minutes: 59)

        XCTAssertEqual(result_3.minutes, WordNumber.five)
        XCTAssertEqual(result_3.accessory, .to)
        XCTAssertEqual(result_3.hour, WordNumber.six)

        XCTAssertEqual(result_3.hour.shour12, "six")
    }
    
}
