//
//  ContentView.swift
//  CreditCalculator
//
//  Created by Dominik Kwiecien on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresenting = false
        
    var body: some View {
        NavigationView {
            VStack {
                SliderView()
                
                Button("Graph") {
                    isPresenting = true
                }
                .frame(height: 50)
                .frame(maxWidth: 100)
                .buttonStyle(.borderedProminent)
            }
            .navigationBarTitle("Take Credit", displayMode: .inline)
            
        }
        .sheet(isPresented: $isPresenting) {
            NavigationView {
                CircleLoanView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
