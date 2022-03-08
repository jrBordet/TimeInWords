//
//  File.swift
//  
//
//  Created by Jean Raphael Bordet on 24/02/22.
//

import Foundation

struct Time {
	var hour: Int
	var minutes: Int
	
	var timeInWords: String {
		switch minutes {
		case 0:
			return "\(WordNumber(hour).word) o' clock"
		case 1:
			return "one minute past \(WordNumber(hour).word)"
		case 0..<15:
			return "\(WordNumber(minutes).word) past \(WordNumber(hour).word)"
		case 15:
			return "quarter past \(WordNumber(hour).word)"
		case 15..<30:
			return "\(WordNumber(minutes).word) minutes past \(WordNumber(hour).word)"
		case 30:
			return "half past \(WordNumber(hour).word)"
		case 30..<45:
			return "\(WordNumber(minutes).word) minutes to \(WordNumber(hour + 1).word)"
		case 45:
			return "quarter to \(WordNumber(hour + 1).word)"
		case 45..<60:
			return "\(WordNumber(minutes).word) minutes to \(WordNumber(hour + 1).word)"
		default:
			return ""
		}
	}
}
