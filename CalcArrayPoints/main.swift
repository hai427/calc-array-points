//
//  main.swift
//  CalcArrayPoints
//
//  Created by iGuest on 10/8/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

func add(left : Int?, right : Int?) -> Int? {
    if left != nil && right != nil {
        return left! + right!
    }
    
    return nil
}

func subtract(left : Int?, right : Int?) -> Int? {
    if left != nil && right != nil {
        return left! - right!
    }
    return nil
}

func multiply(left : Int?, right : Int?) -> Int? {
    if left != nil && right != nil {
        return left! * right!
    }
    return nil
}

func divide(left : Int?, right : Int?) -> Int? {
    if left != nil && right != nil {
        return left! / right!
    }
    return nil
}

func mathOperation(left : Int?, right : Int?, operation : (Int?, Int?) -> Int?) -> Int? {
    if left != nil && right != nil {
        return operation(left!, right!)
    }
    return nil
}

func add(array: [Int]?) -> Int? {
    if array != nil {
        var total = 0
        for num in 0...((array?.count))! - 1 {
            total += (array?[num])!
        }
        return total
    }
    return nil
}

func multiply(array : [Int]?) -> Int? {
    if array != nil {
        var total = 1
        for num in 0...(array?.count)! - 1 {
            total *= (array?[num])!
        }
        return total
    }
    return nil
}

func count(array : [Int]?) -> Int? {
    if array != nil {
        return array?.count
    }
    return nil
}

func average(array : [Int]?) -> Int? {
    if array != nil {
        return add(array: array)! / count(array: array)!
    }
    return nil
}

func reduce(array : [Int]?, operation : ([Int]?) -> Int?) -> Int? {
    if array != nil {
        return operation(array)
    }
    return nil
}

func add(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    return ((p1.0 + p2.0), (p1.1 + p2.1))
}

func subtract(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    return ((p1.0 - p2.0), (p1.1 - p2.1))
}

func add(p1 : [String : Int], p2 : [String : Int]) -> [String : Int]? {
    return [
        "x" : p1["x"]! + p2["x"]!,
        "y" : p1["y"]! + p2["y"]!
    ]
}

func subtract(p1 : [String : Int], p2 : [String : Int]) -> [String : Int]? {
    return [
        "x" : p1["x"]! - p2["x"]!,
        "y" : p1["y"]! - p2["y"]!
    ]
}

func add(p1 : [String : Double]?, p2 : [String : Double]?) -> [String : Double]? {
    if p1 != nil && p2 != nil && p1!["x"] != nil && p1!["y"] != nil && p2!["x"] != nil && p2!["y"] != nil {
        return [
            "x" : p1!["x"]! + p2!["x"]!,
            "y" : p1!["y"]! + p2!["y"]!
        ]
    }
    
    return nil
}

func subtract(p1 : [String : Double]?, p2 : [String : Double]?) -> [String : Double]? {
    if p1 != nil && p2 != nil && p1!["x"] != nil && p1!["y"] != nil && p2!["x"] != nil && p2!["y"] != nil {
        return [
        "x" : p1!["x"]! - p2!["x"]!,
        "y" : p1!["y"]! - p2!["y"]!
        ]
    }
    
    return nil
}
