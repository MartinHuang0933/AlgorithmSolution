//
//  Test-1.swift
//  AlgorithmSolution
//
//  Created by Mac on 2021/2/21.
//

import Foundation

extension AlgorithmSolution
{
//    public func solution(_ S : inout String) -> String {
        // write your code in Swift 4.2.1 (Linux)
        
//        let sChars = Array(S)
//        var charArr : [Character] = []
//        sChars.forEach(){
//            if $0 >= "0" && $0 <= "9" {
//                charArr.append($0)
//            }
//        }
//
//        let modNum = charArr.count % 3
//        if(modNum == 0 || modNum == 2){
//            return addDash(charArr,index: 3)
//        }
//        else{
//            let range = charArr.count-4...charArr.count-1
//            let rightArr : [Character] = Array(charArr[range])
//            charArr.removeSubrange(range)
//            let leftStr = addDash(charArr,index: 3)
//            let rightStr = addDash(rightArr, index: 2)
//
//            return leftStr + "-" + rightStr
//        }
//        return ""
//    }
    
//    public func addDash(_ chars : Array<Character> , index:Int) -> String {
//        var count = 0 , returnString = ""
//        for (cText) in chars {
//            if (count != 0 && (count%index == 0)) {
//                returnString.append("-")
//            }
//            returnString.append(cText)
//            count = count+1
//        }
//        return returnString
//    }
    
    
    
    public func solution(_ N : Int) -> Int {
        // write your code in Swift 4.2.1 (Linux)
        
        var bigint = BigInt(value: "1")
        
        for _ in 1...N {
            bigint.value = multiply(left: bigint.value, right: "11")
        }
        
        print (bigint.value , N )
        var count = 0
        let sChars = Array(bigint.value)
        sChars.forEach(){
            if $0 == "1"{
                count = count+1
            }
        }
        
        return count
    }
    
    struct BigInt {
        var value: String
    }
    
    func multiply(left: String, right: String) -> String {
        var leftCharacterArray = left.reversed().map { Int(String($0))! }
        var rightCharacterArray = right.reversed().map { Int(String($0))! }
        var result = [Int](repeating: 0, count: leftCharacterArray.count+rightCharacterArray.count)
        
        for leftIndex in 0..<leftCharacterArray.count {
            for rightIndex in 0..<rightCharacterArray.count {
                
                let resultIndex = leftIndex + rightIndex
                
                result[resultIndex] = leftCharacterArray[leftIndex] * rightCharacterArray[rightIndex] + (resultIndex >= result.count ? 0 : result[resultIndex])
                if result[resultIndex] > 9 {
                    result[resultIndex + 1] = (result[resultIndex] / 10) + (resultIndex+1 >= result.count ? 0 : result[resultIndex + 1])
                    result[resultIndex] -= (result[resultIndex] / 10) * 10
                }
                
            }
            
        }
        
        result = Array(result.reversed())
        return result.map { String($0) }.joined(separator: "")
    }
}
