//
//  Challenge.swift
//  Challenge37
//
//  Created by PJ on 31/08/2022.
//

import Foundation

public typealias Fruit = String

public func possibleLunches(fruits: [Fruit]) -> [[Fruit]] {
    let results = recurseLunchOptions(fruits: fruits)
    var output = [[Fruit]]()
    
    for result in results where !result.isEmpty {
        output.append(Array(result).sorted())
    }
    
    return output.sorted(by: { $0.joined(separator: ",") < $1.joined(separator: ",") })
}

private func recurseLunchOptions(fruits: [Fruit]) -> Set<Set<Fruit>> {
    guard fruits.count > 1 else {
        var result = Set<Set<Fruit>>()
        result.insert(Set<Fruit>(fruits))
        return result
    }
    
    var results = Set<Set<Fruit>>()
    
    for maxLength in (0..<fruits.count) {
        var remainder = fruits
        var options = [Fruit]()
        for _ in (0..<maxLength) {
            options.append(remainder.removeLast())
        }
        let toAppend = recurseLunchOptions(fruits: options)
        let first = remainder.removeFirst()
        results.insert([first])
        for fruitsToAppend in toAppend {
            results.insert(fruitsToAppend)
            var s1 = fruitsToAppend
            s1.insert(first)
            results.insert(s1)
        }
    }
    
    return results
}

public func possibleLunches2(fruits: [Fruit]) -> [[Fruit]] {
    let results = recurseLunchOptions2(fruits: fruits)
    var output = [[Fruit]]()
    
    for result in results where !result.isEmpty {
        output.append(Array(result).sorted())
    }
    
    return output.sorted(by: { $0.joined(separator: ",") < $1.joined(separator: ",") })
}

var cache = [[Fruit]: Set<Set<Fruit>>]()
public func recurseLunchOptions2(fruits: [Fruit]) -> Set<Set<Fruit>> {
    if let result = cache[fruits] {
        return result
    }
    
    guard fruits.count > 1 else {
        var result = Set<Set<Fruit>>()
        result.insert(Set<Fruit>(fruits))
        return result
    }
    
    var results = Set<Set<Fruit>>()
    
    var fruits = fruits
    
    while !fruits.isEmpty {
        let first = fruits.removeFirst()
        results.insert([first])
        var tail = fruits
        var options = [Fruit]()
        while !tail.isEmpty {
            let last = tail.removeLast()
            options.insert(last, at: 0)
            let toAppend = recurseLunchOptions2(fruits: options)
            for fruitsToAppend in toAppend {
                var s1 = fruitsToAppend
                s1.insert(first)
                results.insert(s1)
            }
        }
    }
    
    cache[fruits] = results
    return results
}

public func possibleLunches3(fruits: [Fruit]) -> [[Fruit]] {
    var results = [[Fruit]]()
    let count = fruits.count
    let maxValue = Int(pow(Double(2), Double(count)))
    print("count", maxValue)
    for i in (1..<maxValue) {
        var items = [Fruit]()
        let indexer = i.binary(padLength: count)
        for (index, value) in indexer.enumerated() {
            if value == "1" {
                items.append(fruits[index])
            }
        }
        results.append(items)
    }
    
    return results
}

/*
 a,b,c,d,e

 a
 a,b
 a,b,c
 a,b,c,d
 a,b,c,d,e
 a,b,c,e
 a,b,d
 a,b,d,e
 a,b,e
 a,c
 a,c,d
 a,c,d,e
 a,c,e
 a,d
 a,d,e
 a,e
 b
 b,c
 b,c,d
 b,c,d,e
 b,c,e
 b,d
 b,d,e
 b,e
 c
 c,d
 c,d,e
 c,e
 d
 d,e
 e

*/
