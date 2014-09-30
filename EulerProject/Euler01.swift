//
//  Euler01.swift
//  EulerProject
//
//  Created by hepaKKes on 26/09/14.
//  Copyright (c) 2014 Eriprando Pacces. All rights reserved.
//

import Foundation

class Euler01 {
    func solveProblem() -> Int {
        return Array(1..<1000)
            .filter{ !Bool($0 % 3) || !Bool($0 % 5) }
            .reduce(0, +);
    }
}