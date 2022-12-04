//
//  ContentView.swift
//  CreditCalculator
//
//  Created by Dominik Kwiecien on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var amount: Float = 0.0
    @State private var installment: Float = 0.0
        
    var body: some View {
        NavigationView {
            VStack {
                Slider(
                    value: $amount,
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
                    .padding()
                
                Button("Calculate" ,action: {
                    print("clicked")
                })
                    .frame(height: 50)
                    .frame(maxWidth: 100)
                    .buttonStyle(.borderedProminent)
                
                
            }
            .navigationBarTitle("Take Credit")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
