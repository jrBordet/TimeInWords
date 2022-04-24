public func timeInWords(h: Int, m: Int) -> String {
	Time(
        hour: h,
        minutes: m
    ).timeInWords
}

public func time12InWords(h: Int, m: Int) -> String {
    let result = time12(h, minutes: m)
    
    // (hour: WordNumber, minutes: WordNumber, accessory: Accessory)
    
    let hour = result.hour.shour12
    let minutes = result.minutes
    let accessory = result.accessory.word
    
    return "\(hour) \(minutes) \(accessory)"
}
