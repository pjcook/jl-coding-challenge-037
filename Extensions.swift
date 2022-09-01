//
//  Extensions.swift
//  Challenge37
//
//  Created by PJ on 01/09/2022.
//

import Foundation

public extension String {
    subscript (i: Int) -> SubSequence {
        get {
            return self[i ..< i + 1]
        }
        set {
            let lower = index(startIndex, offsetBy: i)
            replaceSubrange(lower...lower, with: newValue)
        }
    }
    
    var binary: Int? {
        Int(self, radix: 2)
    }
}

public extension Int {
    var binary: String {
        String(self, radix: 2)
    }
    
    func binary(padLength: Int, with character: Character = "0") -> String {
        let binary = self.binary
        return String(repeating: character, count: padLength - binary.count) + binary
    }
}

public extension StringProtocol {

    var length: Int {
        return count
    }
    
    subscript (i: Int, l: Int) -> SubSequence {
        return self[i ..< i + l]
    }

    func substring(fromIndex: Int) -> SubSequence {
        return self[Swift.min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> SubSequence {
        return self[0 ..< Swift.max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> SubSequence {
        let range = Range(uncheckedBounds: (lower: Swift.max(0, Swift.min(length, r.lowerBound)),
                                            upper: Swift.min(length, Swift.max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return self[start ..< end]
    }
}
