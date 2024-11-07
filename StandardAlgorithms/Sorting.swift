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
        if (n == 1) {return x}
        if (n == 0) {return []}
        var sorted: [Int] = []
        let m = n / 2
        let a = mergeSort(Array(x.prefix(m)))
        let b = mergeSort(Array(x.suffix(from: m)))
        
        var i = 0, j = 0
        while (i < a.count && j < b.count) {
            while (i < a.count && j < b.count && a[i] <= b[j]) {
                sorted.append(a[i]);
                i += 1;
            }
            while (i < a.count && j < b.count && a[i] > b[j]) {
                sorted.append(b[j]);
                j += 1;
            }
        }
        while (i < a.count) {
            sorted.append(a[i])
            i += 1;
        }
        while (j < b.count) {
            sorted.append(b[j])
            j += 1;
        }
        return sorted
    }
    func binarySearch(_ m: [Int], _ x: Int) -> [Int] {
    }
    
    
