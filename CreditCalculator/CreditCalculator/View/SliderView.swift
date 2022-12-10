//
//  SliderView.swift
//  CreditCalculator
//
//  Created by Dominik Kwiecien on 07/12/2022.
//

import SwiftUI

struct SliderView: View {
    @State private var amount: Float = 0.0
    @State private var installment: Float = 0.0
    @State private var amountOfInstalment: Float = 0.0
    
    func Calculate() {
        amountOfInstalment = amount / installment
    }
    
    var body: some View {
        VStack {
            Slider(
                value:  $amount,
                in: 1000...30000,
                step: 100.0,
                minimumValueLabel: Text("1000"),
                maximumValueLabel: Text("30000"),
                label: {
                    Text("Ammount")
                }
            )
            .accentColor(.green)
            Text(
                    String(format: "loan ammount " + "%.2f", amount)
            )
            
            Slider(
                value: $installment,
                in: 6...32,
                step: 1.00,
                minimumValueLabel: Text("6"),
                maximumValueLabel: Text("32"),
                label: {
                    Text("instalment")
                }
            )
            
            Text(
                String(format:"number of installments " + "%.0f", installment)

            )
            
            Button("Calculate" ,action: {
                Calculate()
            })
            Spacer()
            Text("Amount of installments \(amountOfInstalment)")
            
                .frame(height: 50)
                .frame(maxWidth: 100)
                .buttonStyle(.borderedProminent)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
