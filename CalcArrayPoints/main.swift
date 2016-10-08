//
//  main.swift
//  CalcArrayPoints
//
//  Created by iGuest on 10/8/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

func add(left : Int, right : Int) -> Int {
    return left + right
}

func subtract(left : Int, right : Int) -> Int {
    return left - right
}

func multiply(left : Int, right : Int) -> Int {
    return left * right
}

func divide(left : Int, right : Int) -> Int {
    return left / right
}

func mathOperation(left : Int, right : Int, operation : (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

func add(numArray: [Int]) -> Int {
    var total = 1
    for num in 0...numArray.count - 1 {
        total += num
    }
    
    return total
}

func multiply(numArray : [Int]) -> Int {
    var total = 1
    for num in 0...numArray.count - 1 {
        total *= num
    }
    return total
}

func count(numArray : [Int]) -> Int {
    return numArray.count
}

func average(numArray : [Int]) -> Int {
    return add(numArray: numArray) / count(numArray: numArray)
}

func reduce(numArray : [Int], operation : ([Int]) -> [Int]) -> [Int] {
    return operation(numArray)
}
