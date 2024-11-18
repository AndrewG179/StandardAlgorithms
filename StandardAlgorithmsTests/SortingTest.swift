//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Goryainov, Andrey (SPH) on 05/11/2024.
//

import XCTest
@testable import StandardAlgorithms

final class SortingTest: XCTestCase {
    func testAllMergeSortIntAscending () {
        //arrange --setup
        let sorting = Sorting()
        let testCases = [
                            (a: [3, 1, 4, 5, 2], expectedA: [1, 2, 3, 4, 5]),
                            (a: [7, 3, 1, 4, 9, 5, 8, 2, 6], expectedA: [1, 2, 3, 4, 5, 6, 7, 8, 9]),
                            (a: [], expectedA: []),
                            (a: [2, 1, 2, 1, 5, 3, 4], expectedA: [1, 1, 2, 2, 3, 4, 5]),
                            (a: [7, -1, 5, 0, -2], expectedA: [-2, -1, 0, 5, 7]),
        ]
        //act -- run
        //assert -- check
        for testCase in testCases {
            let result = sorting.mergeSort(testCase.a)

            XCTAssertEqual(result, testCase.expectedA)
        }
    }
    
    func testAllBubbleSortIntAscending () {
        //arrange --setup
        let sorting = Sorting()
        let testCases = [
                            (a: [3, 1, 4, 5, 2], expectedA: [1, 2, 3, 4, 5]),
                            (a: [7, 3, 1, 4, 9, 5, 8, 2, 6], expectedA: [1, 2, 3, 4, 5, 6, 7, 8, 9]),
                            (a: [], expectedA: []),
                            (a: [2, 1, 2, 1, 5, 3, 4], expectedA: [1, 1, 2, 2, 3, 4, 5]),
                            (a: [7, -1, 5, 0, -2], expectedA: [-2, -1, 0, 5, 7]),
        ]
        //act -- run
        //assert -- check
        for testCase in testCases {
            let result = sorting.bubbleSort(testCase.a)

            XCTAssertEqual(result, testCase.expectedA)
        }
    }
    
    func testAllQuickSortIntAscending () {
        //arrange --setup
        let sorting = Sorting()
        let testCases = [
                            (a: [3, 1, 4, 5, 2], expectedA: [1, 2, 3, 4, 5]),
                            (a: [7, 3, 1, 4, 9, 5, 8, 2, 6], expectedA: [1, 2, 3, 4, 5, 6, 7, 8, 9]),
                            (a: [], expectedA: []),
                            (a: [2, 1, 2, 1, 5, 3, 4], expectedA: [1, 1, 2, 2, 3, 4, 5]),
                            (a: [7, -1, 5, 0, -2], expectedA: [-2, -1, 0, 5, 7]),
        ]
        //act -- run
        //assert -- check
        for testCase in testCases {
            let result = sorting.quickSort(testCase.a)

            XCTAssertEqual(result, testCase.expectedA)
        }
    }
    
    func testAllInsertionSortIntAscending () {
        //arrange --setup
        let sorting = Sorting()
        let testCases = [
                            (a: [3, 1, 4, 5, 2], expectedA: [1, 2, 3, 4, 5]),
                            (a: [7, 3, 1, 4, 9, 5, 8, 2, 6], expectedA: [1, 2, 3, 4, 5, 6, 7, 8, 9]),
                            (a: [], expectedA: []),
                            (a: [2, 1, 2, 1, 5, 3, 4], expectedA: [1, 1, 2, 2, 3, 4, 5]),
                            (a: [7, -1, 5, 0, -2], expectedA: [-2, -1, 0, 5, 7]),
        ]
        //act -- run
        //assert -- check
        for testCase in testCases {
            let result = sorting.insertionSort(testCase.a)

            XCTAssertEqual(result, testCase.expectedA)
        }
    }
    
    func testBinarySearch () {
        //arrange --setup
        let sorting = Sorting()
        let testCases = [
                            (x: [1, 2, 3, 4, 5], toFind: 3, expectedIndex: 2),
                            (x: [1, 3, 5, 7, 9], toFind: 7, expectedIndex: 3),
                            (x: [1, 2, 3, 5, 7, 9], toFind: 2, expectedIndex: 1),
                            (x: [1, 2], toFind: 1, expectedIndex: 0),
                            (x: [1], toFind: 1, expectedIndex: 0),
        ]
        //act -- run
        //assert -- check
        for testCase in testCases {
            let result = sorting.binarySearch(testCase.x, testCase.toFind)

            XCTAssertEqual(result, testCase.expectedIndex)
        }
    }
    
    func testLinearSearch () {
        //arrange --setup
        let sorting = Sorting()
        let testCases = [
                            (x: [1, 2, 3, 4, 5], toFind: 3, expectedIndex: 2),
                            (x: [1, 3, 5, 7, 9], toFind: 7, expectedIndex: 3),
                            (x: [1, 2, 3, 5, 7, 9], toFind: 2, expectedIndex: 1),
                            (x: [1, 2], toFind: 1, expectedIndex: 0),
                            (x: [1], toFind: 1, expectedIndex: 0),
        ]
        //act -- run
        //assert -- check
        for testCase in testCases {
            let result = sorting.linearSearch(testCase.x, testCase.toFind)

            XCTAssertEqual(result, testCase.expectedIndex)
        }
    }
}
