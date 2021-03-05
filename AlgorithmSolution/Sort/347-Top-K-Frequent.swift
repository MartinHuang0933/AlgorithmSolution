//
//  test.swift
//  AlgorithmSolution
//
//  Created by Mac on 2021/2/18.
//

import Foundation


extension AlgorithmSolution
{
    /**
     347. 前 K 个高频元素
    给定一个非空的整数数组，返回其中出现频率前 k 高的元素。

     示例 1:
        输入: nums = [1,1,1,2,2,3], k = 2
        输出: [1,2]
     
     示例 2:
        输入: nums = [1], k = 1
        输出: [1]
      
     提示：
        你可以假设给定的 k 总是合理的，且 1 ≤ k ≤ 数组中不相同的元素的个数。
        你的算法的时间复杂度必须优于 O(n log n) , n 是数组的大小。
        题目数据保证答案唯一，换句话说，数组中前 k 个高频元素的集合是唯一的。
        你可以按任意顺序返回答案。
     */
    
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int]
    {
        var resultArray : [Int] = []
        var map : [Int:Int] = [:]
        
        // 若 k 值太大為例外狀況不處理
        if k>nums.count {
            return resultArray
        }
        
        // 將 number 放進 Dictionary 內 , 如果不存在則放 1 , 如果已存在則 +1
        for number in nums {
            map[number] = (map[number]==nil) ? 1 : map[number]!+1
        }
        
        // 依照 Dictionary value 進行排序
        let sortedArray = map.sorted{ $0.value>$1.value }
        
        // 取前 k 大的 Key , 並加入 resultArray
        for i in 0..<k {
            resultArray.append(sortedArray[i].key)
        }
        
        return resultArray
    }
}
