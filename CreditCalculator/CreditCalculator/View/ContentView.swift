//
//  ContentView.swift
//  CreditCalculator
//
//  Created by Dominik Kwiecien on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var installment: Float = 0.0
    
    var body: some View {
        NavigationView {
            VStack {
                Slider(
                    value: $installment,
                    in:1000...100000)
                
                Text("loan amount \(installment)")
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
