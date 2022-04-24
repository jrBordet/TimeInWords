import XCTest
@testable import TimeInWords

final class TimeInWordsTests: XCTestCase {
	
    func testOClock() throws {
        XCTAssertEqual(
			timeInWords(h: 10, m: 0),
			"ten o' clock"
		)
    }
	
	func testPastMinutes() throws {
		XCTAssertEqual(timeInWords(h: 10, m: 5), "five past ten")
	}
	
	func testPastQuarter() throws {
		XCTAssertEqual(timeInWords(h: 10, m: 15), "quarter past ten")
	}
	
	func testMinutesTo() throws {
		XCTAssertEqual(timeInWords(h: 5, m: 47), "thirteen minutes to six")
	}
	
	func testPastOne() throws {
		XCTAssertEqual(timeInWords(h: 1, m: 1), "one minute past one")
	}
    
}

final class TimeInWords12FormatTests: XCTestCase {
    
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
        XCTAssertEqual(result_1.accessory, .quarter)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")
        
        let result_2 = time12(18, minutes: 17)
        
        XCTAssertEqual(result_2.minutes, WordNumber.fifteen)
        XCTAssertEqual(result_2.accessory, .quarter)
        XCTAssertEqual(result_2.hour, WordNumber.six)
        
        XCTAssertEqual(result_2.hour.shour12, "six")
        
        let result_3 = time12(18, minutes: 19)
        
        XCTAssertEqual(result_3.minutes, WordNumber.fifteen)
        XCTAssertEqual(result_3.accessory, .quarter)
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
    }
    
    func testTwentyFiveTo() throws {
        let result_1 = time12(18, minutes: 31)
        
        XCTAssertEqual(result_1.minutes, WordNumber.twenty_five)
        XCTAssertEqual(result_1.accessory, .to)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")

        let result_2 = time12(18, minutes: 32)

        XCTAssertEqual(result_2.minutes, WordNumber.twenty_five)
        XCTAssertEqual(result_2.accessory, .to)
        XCTAssertEqual(result_2.hour, WordNumber.six)

        XCTAssertEqual(result_2.hour.shour12, "six")

        let result_3 = time12(18, minutes: 35)

        XCTAssertEqual(result_3.minutes, WordNumber.twenty_five)
        XCTAssertEqual(result_3.accessory, .to)
        XCTAssertEqual(result_3.hour, WordNumber.six)

        XCTAssertEqual(result_3.hour.shour12, "six")
    }
    
    func testTwentyTo() throws {
        let result_1 = time12(18, minutes: 36)
        
        XCTAssertEqual(result_1.minutes, WordNumber.twenty)
        XCTAssertEqual(result_1.accessory, .to)
        XCTAssertEqual(result_1.hour, WordNumber.six)
        
        XCTAssertEqual(result_1.hour.shour12, "six")

        let result_2 = time12(18, minutes: 38)

        XCTAssertEqual(result_2.minutes, WordNumber.twenty)
        XCTAssertEqual(result_2.accessory, .to)
        XCTAssertEqual(result_2.hour, WordNumber.six)

        XCTAssertEqual(result_2.hour.shour12, "six")

        let result_3 = time12(18, minutes: 40)

        XCTAssertEqual(result_3.minutes, WordNumber.twenty)
        XCTAssertEqual(result_3.accessory, .to)
        XCTAssertEqual(result_3.hour, WordNumber.six)

        XCTAssertEqual(result_3.hour.shour12, "six")
    }
    
}


//let result_3 = time12(18, minutes: 20)
//
//XCTAssertEqual(result_3.minutes, WordNumber.twenty)
//XCTAssertEqual(result_3.accessory, .past)
//XCTAssertEqual(result_3.hour, WordNumber.six)
//
//XCTAssertEqual(result_3.hour.shour12, "six")
