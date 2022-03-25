//: [Previous](@previous)

import UIKit

var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)
numbers.append(1)

numbers[0]
numbers[1]

numbers.insert(4, at: 2)
numbers

numbers.remove(at: 2)
numbers

//var names: [String] = [] ->줄이기

//var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic: [String: Int] = ["정수호": 1]
dic["정승호"] = 3
dic["김혜진"] = 5
dic

dic["정승호"] = 6
dic

dic.removeValue(forKey: "김혜진")
dic

var set: Set = Set<Int>()

set.insert(30)
set.insert(20)
set.insert(40)
set.insert(40)
set.insert(40)
set

set.remove(20)
set
//: [Next](@next)
