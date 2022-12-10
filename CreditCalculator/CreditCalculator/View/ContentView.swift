//
//  ContentView.swift
//  CreditCalculator
//
//  Created by Dominik Kwiecien on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    
        
    var body: some View {
        NavigationView {
            VStack {
                SliderView()
                
            }
            .navigationBarTitle("Take Credit", displayMode: .inline)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
