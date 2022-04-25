public func timeInWords(
    h: Int,
    m: Int
) -> String {
	Time(
        hour: h,
        minutes: m
    ).timeInWords
}

public func time12InWords(
    h: Int,
    m: Int
) -> (hour: WordNumber, minutes: WordNumber, accessory: Accessory) {
    time12(h, minutes: m)
}
