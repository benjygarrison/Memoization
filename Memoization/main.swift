//
//  main.swift
//  Memoization
//
//  Created by Ben Garrison on 1/6/22.
//

import Foundation

/*
 An optimization technique that stores expensive calculated results and returns them when they are called for.
 Basically, caching expensive results
 
 MARK: What to know -> Fibonacci [Fn = Fn-1 + Fn-2] (Recursive, grows exponetially, O(2n)). Memoization is for optimization
 */

//MARK: Fibonacci without memoization:

func fibNaive(_ n: Int) -> Int {
    //print(n)
    
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        return fibNaive(n-1) + fibNaive(n-2)
    }
}

print("Unoptimized fibonacci: \(fibNaive(30))")


//MARK: With memoization (results saved to dictionary)

var memo = [Int: Int]()

func fib(_ n: Int) -> Int {
    
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    }
    
    if let result = memo[n] {
        return result
    }
    
    memo[n] = fib(n - 1) + fib(n - 2)
    
    return memo[n]!
}

print("")
print("Optimized Fibonacci \(fibNaive(30))")

print("")






