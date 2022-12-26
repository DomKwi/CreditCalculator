//
//  CircleLoanView.swift
//  CreditCalculator
//
//  Created by Dominik Kwiecien on 12/12/2022.
//

import SwiftUI

struct CircleLoanView: View {
    @Binding var loanAmount: Float
    @Binding var amountOfInstalment: Float
    
    @State var progress: Float = 0.30
    @State var numberInPercentage: Float = 0.0
    @State var instalmentInProcentage: Float = 0.0
    
    func convertionToProcentage() {
        numberInPercentage = loanAmount / 30000
        instalmentInProcentage = amountOfInstalment / 30000
    }
    
    var body: some View {
        VStack {
            ProgressBar(progress: self.$numberInPercentage, instalmentProgres: self.instalmentInProcentage)
                .frame(width: 160.0, height: 160.0)
                .padding(20.0).onAppear() {
                }
            
            Text(
                String(format: "loan ammount " + "%.2f", loanAmount)
            )
            
            Text(
                String(format: "amount of instalment " + "%.2f", amountOfInstalment)
            )
            
            Button("Show graph", action: {
                convertionToProcentage()
            })
            .frame(height: 50)
            .frame(maxWidth: 115)
            .buttonStyle(.borderedProminent)
        }
    }
}

struct ProgressBar: View {
    
    @Binding var progress: Float
    var color: Color = Color.green
    var instalmentProgres: Float
    var instalmentColor: Color = Color.red
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20.0)
                .opacity(0.20)
                .foregroundColor(Color.black)
            
            Text("Graphic View")
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1)))
                .stroke(style: StrokeStyle(lineWidth: 12.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(color)
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 2.0))
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.instalmentProgres, 1)))
                .stroke(style: StrokeStyle(lineWidth: 12.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(instalmentColor)
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 2.0))
        }
        .navigationTitle("Graphic View")
    }
}

struct CircleLoanView_Previews: PreviewProvider {
    
    static var previews: some View {
        CircleLoanView(loanAmount: .constant(15000),
                       amountOfInstalment: .constant(0))
    }
}
