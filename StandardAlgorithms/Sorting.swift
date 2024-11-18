//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Goryainov, Andrey (SPH) on 05/11/2024.
//

import Foundation

class Sorting {
    func mergeSort(_ x: [Int]) -> [Int] {
        let n = x.count
        if n == 1 { return x }
        if n == 0 { return [] }
        
        var sorted: [Int] = []
        let m = n / 2
        let a = mergeSort(Array(x.prefix(m)))
        let b = mergeSort(Array(x.suffix(from: m)))
        
        var i = 0, j = 0
        while i < a.count && j < b.count {
            if a[i] <= b[j] {
                sorted.append(a[i])
                i += 1
            } else {
                sorted.append(b[j])
                j += 1
            }
        }
        while i < a.count {
            sorted.append(a[i])
            i += 1
        }
        while j < b.count {
            sorted.append(b[j])
            j += 1
        }
        return sorted
    }
    
    func binarySearch(_ x: [Int], _ toFind: Int) -> Int {
        var l = -1
        var r = x.count
        while r - l > 1 {
            let m = l + (r - l) / 2
            if x[m] < toFind {
                l = m
            } else {
                r = m
            }
        }
        return r
    }
    
    func linearSearch(_ x: [Int], _ value: Int) -> Int? {
        for i in 0..<x.count {
            if x[i] == value {
                return i
            }
        }
        return nil
    }
    
    func quickSort(_ x: [Int]) -> [Int] {
        let n = x.count
        if n <= 1 { return x }
        
        let pivot = x[n / 2]
        var less: [Int] = []
        var equal: [Int] = []
        var greater: [Int] = []
        
        for i in 0..<n {
            if x[i] < pivot {
                less.append(x[i])
            } else if x[i] == pivot {
                equal.append(x[i])
            } else {
                greater.append(x[i])
            }
        }
        
        let sortedLess = quickSort(less)
        let sortedGreater = quickSort(greater)
        return sortedLess + equal + sortedGreater
    }
    
    func bubbleSort(_ x: [Int]) -> [Int] {
        var x = x
        let n = x.count
        for i in 0..<n {
            for j in 0..<(n - i - 1) {
                if x[j] > x[j + 1] {
                    let temp = x[j]
                    x[j] = x[j + 1]
                    x[j + 1] = temp
                }
            }
        }
        return x
    }
    
    func insertionSort(_ x: [Int]) -> [Int] {
        var x = x
        let n = x.count
        for i in 1..<n {
            var j = i
            while j > 0 && x[j] < x[j - 1] {
                let temp = x[j]
                x[j] = x[j - 1]
                x[j - 1] = temp
                j -= 1
            }
        }
        return x
    }
}
