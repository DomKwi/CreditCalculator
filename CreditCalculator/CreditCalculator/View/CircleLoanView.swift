//
//  CircleLoanView.swift
//  CreditCalculator
//
//  Created by Dominik Kwiecien on 12/12/2022.
//

import SwiftUI

struct CircleLoanView: View {
    @State var progressValue: Float = 0.0
    
    @Binding var loanAmount : Float
    

    var body: some View {
        VStack {
            ProgressBar(progress: self.$progressValue)
                .frame(width: 160.0, height: 160.0)
                .padding(20.0).onAppear() {
                    self.progressValue = 0.30
                }
            
            Text("loan amount \(loanAmount)")
        }
    }
}

struct ProgressBar: View {
    
    @Binding var progress: Float
    var color: Color = Color.green
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20.0)
                .opacity(0.20)
                .foregroundColor(Color.black)
            
            
            Text("Graphic View")
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 12.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(color)
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 2.0))
        }
        .navigationTitle("Graphic View")
    }
}

struct CircleLoanView_Previews: PreviewProvider {
    
    static var previews: some View {
        CircleLoanView(loanAmount: .constant(15000))
    }
}
