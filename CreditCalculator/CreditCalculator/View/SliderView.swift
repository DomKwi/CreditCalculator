//
//  SliderView.swift
//  CreditCalculator
//
//  Created by Dominik Kwiecien on 07/12/2022.
//

import SwiftUI

struct SliderView: View {
    @State var loanAmount: Float = 15000.0
    @State private var installment: Float = 12.0
    @State private var amountOfInstalment: Float = 0.0
    
    
    func Calculate() {
        amountOfInstalment = (loanAmount * 0.15) / installment
    }
    
    var body: some View {
        VStack {
            Spacer()
            Slider(
                value:  $loanAmount,
                in: 1000...30000,
                step: 100.0,
                minimumValueLabel: Text("1000"),
                maximumValueLabel: Text("30000"),
                label: {
                    Text("Amount")
                }
            )
            .padding(.horizontal, 30.0)
            .accentColor(.green)
            Text(
                String(format: "loan ammount " + "%.2f", loanAmount)
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
            .padding(.horizontal, 30.0)
            
            Text(
                String(format:"number of installments " + "%.0f", installment)
                
            )
            
            Button("Calculate" ,action: {
                Calculate()
            })
            .frame(height: 50)
            .frame(maxWidth: 100)
            .buttonStyle(.borderedProminent)
            Spacer()
            
            Text(
                String(format: "The amount of your loan installment " + "%.2f", amountOfInstalment )

            )
            
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
