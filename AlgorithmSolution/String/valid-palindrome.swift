//
//  valid-palindrome.swift
//  AlgorithmSolution
//
//  Created by Mac on 2021/2/3.
//

import Foundation

extension AlgorithmSolution
{
    func validPalindrome(_ s: String) -> Bool
    {
        // 解法一： 反轉
        // (1) 先挑出英文字、數字，並組成只有單純英數的 letterNumberString
        let sChars = Array(s.lowercased())
        var reverseStr = "" , letterNumberString = "";
        sChars.forEach()
        {
            if ($0.isLetter || $0.isNumber)  {
                letterNumberString.append($0)
            }
        }
        // (2) 將 letterNumberString 反轉，並檢查是否與自己相同
        reverseStr = String(letterNumberString.reversed())

        return reverseStr == letterNumberString

        
//============================================================================
        
        // 解法二： 雙指針 (可能會超時)
        // (1) 先挑出英文字、數字，並組成只有單純英數的 goodStr
//        let sChars = Array(s.lowercased())
//        var goodStr = "";
//        sChars.forEach()
//        {
//            if ($0.isLetter || $0.isNumber)  {
//                goodStr.append($0)
//            }
//        }
//        // (2) 建立兩個指針(一頭一尾)，並往中間出發逐一比對，如果判斷有不同的就代表這個字串不是迴文
//        var left = 0 , right = goodStr.count-1;
//        while left < right
//        {
//            let leftChar = goodStr.index(goodStr.startIndex, offsetBy: left)
//            let rightChar = goodStr.index(goodStr.startIndex, offsetBy: right)
//            
//            if goodStr[leftChar] != goodStr[rightChar]{
//                return false
//            }
//            
//            left += 1
//            right -= 1
//        }
//        return true;
    }
}
