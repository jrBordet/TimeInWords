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
