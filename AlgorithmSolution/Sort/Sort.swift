//
//  Sort.swift
//  AlgorithmSolution
//
//  Created by Mac on 2021/2/16.
//

import Foundation

extension AlgorithmSolution
{
    func Sort(_ nums: [Int]) -> [Int]
    {
        self.sdkSort(nums)
    }
    
    // SDK 排序
    func sdkSort(_ nums: [Int]) -> [Int]
    {
        var sortArray = nums
        sortArray.sort(by: <)
        return sortArray
    }
    
    // 氣泡排序
    func bubbleSort(_ nums: [Int]) -> [Int]
    {
        var sortArray = nums
        for i in 0..<nums.count-1
        {
            for j in 0..<nums.count-1-i
            {
                if sortArray[j] > sortArray[j+1]
                {
                    let temp = sortArray[j]
                    sortArray[j] = sortArray[j+1]
                    sortArray[j+1] = temp
                }
            }
        }
        return sortArray
    }
    
    // 快速排序
    func quickSort(_ nums: [Int]) -> [Int]
    {
        var sortArray = nums
        
        
        
        
        
        
        
        
        sortArray.sort(by: <)
        return sortArray
    }
}
