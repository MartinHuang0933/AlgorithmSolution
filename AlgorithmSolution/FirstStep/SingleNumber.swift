//
//  SingleNumber.swift
//  AlgorithmSolution
//
//  Created by Mac on 2021/2/3.
//

import Foundation

class AlgorithmSolution {
    
    
    /**
     136. 只出现一次的数字
     给定一个非空整数数组，除了某个元素只出现一次以外，其余每个元素均出现两次。找出那个只出现了一次的元素。
     说明： 你的算法应该具有线性时间复杂度。 你可以不使用额外空间来实现吗？

     示例 1:
        输入: [2,2,1]
        输出: 1
     
     示例 2:
        输入: [4,1,2,1,2]
        输出: 4
     */
    
    func calculationSingleNumber(_ nums: [Int]) -> Int {

        // 解法一：
        // (1) 使用 Dic 把輸入的數字當成 Key , 每次出現 Value 就 +1
        // (2) 最後再尋找 Value == 1 的 Key
        var numsDic = [Int: Int]()
        
        for i in 0..<nums.count
        {
            let pointNun : Int = nums[i];
            if numsDic[pointNun] == nil
            {
                numsDic[pointNun] = 0
            }
            numsDic[pointNun] = numsDic[pointNun]! + 1
        }
    
        for i in 0..<nums.count
        {
            if numsDic[nums[i]] == 1
            {
                return nums[i]
            }
        }
        
        return 0
        
        // 解法二： 使用 XOR 邏輯運算
        /*
        var number : Int = 0
        for i in 0..<nums.count
        {
            print("\(number) = \(number) ^ \(nums[i]) = \(number ^ nums[i])")
            number = number ^ nums[i]
        }
        return number
        */
    }
}



