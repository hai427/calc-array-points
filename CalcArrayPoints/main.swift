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

func add(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    return ((p1.0 + p2.0), (p1.1 + p2.1))
}

func subtract(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    return ((p1.0 - p2.0), (p1.1 - p2.1))
}

func add(p1 : [String : Int], p2 : [String : Int]) -> [String : Int] {
    return [
        "x" : p1["x"]! + p2["x"]!,
        "y" : p1["y"]! + p2["y"]!
    ]
}

func subtract(p1 : [String : Int], p2 : [String : Int]) -> [String : Int] {
    return [
        "x" : p1["x"]! - p2["x"]!,
        "y" : p1["y"]! - p2["y"]!
    ]
}

func add(p1 : [String : Double], p2 : [String : Double]) -> [String : Double] {
    return [
        "x" : p1["x"]! + p2["x"]!,
        "y" : p1["y"]! + p2["y"]!
    ]
}

func subtract(p1 : [String : Double], p2 : [String : Double]) -> [String : Double] {
    return [
        "x" : p1["x"]! - p2["x"]!,
        "y" : p1["y"]! - p2["y"]!
    ]
}
