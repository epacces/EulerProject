//
//  Euler02.swift
//  EulerProject
//
//  Created by hepaKKes on 26/09/14.
//  Copyright (c) 2014 Eriprando Pacces. All rights reserved.
//

import Foundation

class Euler02 {
    
    private func fibonacciGenerator() -> (() -> Int) {
        var oldestFibonacci = 0
        var olderFibonacci = 1
        
        func generator () -> Int {
            var currentFibonacci = oldestFibonacci + olderFibonacci
            olderFibonacci = oldestFibonacci;
            oldestFibonacci = currentFibonacci;
            
            return currentFibonacci;
        }
        
        return generator;
    }
    
    private func fibonacciSequence(#fibonacciNumbers: Int) -> [Int] {
        let fibonacciGen = fibonacciGenerator()
       
        return (1...fibonacciNumbers).map {
            let _ = $0
            return fibonacciGen()
        }
    }
    
    private func fibonacciSequence(#limit: Int) -> [Int] {
        let fibonacciGen = fibonacciGenerator()
        
        var fibonacciSequence = Array<Int>()
        for ;;  {
            let nextFibonacci = fibonacciGen()
            if nextFibonacci > limit {
                return fibonacciSequence
            }
            
            fibonacciSequence.append(nextFibonacci)
        }
    }
    
    func solveProblem() -> Int {
        return fibonacciSequence(limit: 4e6)
            .filter {
                Bool($0 % 2)
            }
            .reduce(0, +)
    }
    
}