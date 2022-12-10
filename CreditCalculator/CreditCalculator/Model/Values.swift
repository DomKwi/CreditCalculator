//
//  Values.swift
//  CreditCalculator
//
//  Created by Dominik Kwiecien on 08/12/2022.
//

import Foundation

struct values {
    var amount = 0.0
    var installment = 0.0
    var result = 0.0
    
    init(amount: Double, installment: Double, result: Double) {
        self.amount = amount
        self.installment = installment
        self.result = result
    }
    
    mutating func calculate() {
        self.result = self.installment * self.amount
    }
}


