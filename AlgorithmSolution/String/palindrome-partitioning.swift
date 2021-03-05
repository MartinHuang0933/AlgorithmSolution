//
//  palindrome-partitioning.swift
//  AlgorithmSolution
//
//  Created by Mac on 2021/2/3.
//

import Foundation

extension AlgorithmSolution
{
//    func palindromePartitioning(_ s: String) -> [[String]]
//    {
//        let result = [
//            ["aa","b"],
//            ["a","a","b"]
//          ]
//        return result
//    }
    
    
    func palindromePartitioning(_ s: String) -> [[String]] {
        var paths = [[String]](), path = [String]()

        dfs(&paths, &path, Array(s), 0)

        print(paths)
        
        return paths
    }

    fileprivate func dfs(_ paths: inout [[String]], _ path: inout [String], _ s: [Character], _ index: Int) {
        if index == s.count {
            paths.append(Array(path))
            return
        }

        for i in index..<s.count {
            let current = String(s[index...i])

            if current.isPalindrome {
                path.append(current)
                dfs(&paths, &path, s, i + 1)
                path.removeLast()
            }
        }
    }
}

extension String {
    var isPalindrome: Bool {
        let chars = Array(self)

        var i = 0, j = count - 1

        while i <= j {
            if chars[i] != chars[j] {
                return false
            }
            i += 1
            j -= 1
        }

        return true
    }
}
