//
//  ValueModel.swift
//  CreditCalculator
//
//  Created by Dominik Kwiecien on 10/12/2022.
//

import Foundation

struct values {
    var amount: Double
    var installment: Double
    var result: Double
    
    init(amount: Double, installment: Double, result: Double) {
        self.amount = amount
        self.installment = installment
        self.result = result
    }
}

