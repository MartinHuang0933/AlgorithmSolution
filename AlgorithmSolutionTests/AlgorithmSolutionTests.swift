//
//  AlgorithmSolutionTests.swift
//  AlgorithmSolutionTests
//
//  Created by Mac on 2021/2/3.
//

import XCTest
@testable import AlgorithmSolution

class AlgorithmSolutionTests: XCTestCase {

    var algorithm: AlgorithmSolution!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
     
        algorithm = AlgorithmSolution()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    /*
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
     */

    // 題目： 只出現一次的數字 SingleNumber
//    func testSingleNumber() throws
//    {
//        let testcase = [([1,2,2,3,3],1),
//                        ([5,2,5,2,3],3),
//                        ([1,1,7],7)]
//
//        for (_, element) in testcase.enumerated()
//        {
//            if singleNum.calculationSingleNumber(element.0) == element.1{
//                XCTAssert(true)
//            }else{
//                XCTAssert(false)
//            }
//        }
//    }
    
    // 題目： 驗證回文 valid-palindrome
//    func testValidPalindrome() throws
//    {
//        let testcase = ["A man, a plan, a canal: Panama",
//                        "rac a car"]
//
//        for (_, element) in testcase.enumerated()
//        {
//            if AlgorithmSolution().validPalindrome(element) {
//                XCTAssert(true)
//            }else{
//                XCTAssert(false)
//            }
//        }
//    }
    
    // 題目： 分割回文串 palindrome-partitioning
//    func testPalindromePartitioning() throws
//    {
//        let testcase = ["aab"]
//
//        for (_, element) in testcase.enumerated()
//        {
//            let resultArray = [
//                ["aa","b"],
//                ["a","a","b"]
//              ]
//
//            let result = (AlgorithmSolution().palindromePartitioning(element) == resultArray)
//            if result {
//                XCTAssert(true)
//            }else{
//                XCTAssert(false)
//            }
//        }
//    }
    
    
    // 題目： 排序
//    func testSort() throws
//    {
//        let testcase = [([3,2,1,5,6,4],[1,2,3,4,5,6]),
//                        ([99,88,33,22,55,11,66],[11,22,33,55,66,88,99])]
//
//        for (_, element) in testcase.enumerated()
//        {
//            if (AlgorithmSolution().Sort(element.0) == element.1) {
//                XCTAssert(true)
//            }else{
//                XCTAssert(false)
//            }
//        }
//    }
    
    
    // 題目： 215. 数组中的第K个最大元素 Kth Largest Element in an Array
//    func testFindKthLargest() throws
//    {
//        let testcase : [([Int],Int,Int)] = [([3,2,1,5,6,4],2,5),
//                                            ([3,2,3,1,2,4,5,5,6],4,4)]
//
//        for (_, element) in testcase.enumerated()
//        {
//            if (AlgorithmSolution().findKthLargest(element.0,element.1) == element.2) {
//                XCTAssert(true)
//            }else{
//                XCTAssert(false)
//            }
//        }
//    }
    
    
    // 題目： 215. 数组中的第K个最大元素 Kth Largest Element in an Array
//    func testTopKFrequent() throws
//    {
//        let testcase : [([Int],Int)] = [([3,3,1,1,6,4],2),
//                                        ([3,8,3,3,1,2,4,5,5,6,7,7,7,7],3)]
//
//        for (_, element) in testcase.enumerated()
//        {
//            if (AlgorithmSolution().topKFrequent(element.0,element.1).count > 0) {
//                XCTAssert(true)
//            }else{
//                XCTAssert(false)
//            }
//        }
//    }
    
    // 題目： 215. 数组中的第K个最大元素 Kth Largest Element in an Array
    func testExam() throws
    {
//        var testcase : [:(String,String)] = [("'00-44  48 5555 8361'","004-448-555-583-61")]

        var test = "5553726511";
        let result = "004-448-555-583-6";
        
//        for (_, element) in testcase.enumerated()
//        {
        if (AlgorithmSolution().solution(3) > 0) {
            XCTAssert(true)
        }else{
            XCTAssert(false)
        }
//        }
    }
    
    
    
    
}
