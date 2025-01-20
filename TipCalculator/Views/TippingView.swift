//
//  ContentView.swift
//  TipCalculator
//
//  Created by Hannu Packalen on 2025-01-20.
//

import SwiftUI

struct TippingView: View {
    //Mark: Stored properties
    @State var tip: Double = 0.0
    @State var serviceQuality: String = []
    
    //Mark: Computed properties
    
    var body: some View {
        VStack {
            HStack{
                Text("Tip calculator")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            Text("service was...")
                .font(.headline)
            HStack{
                Button(action:{
                    
                } , label:{
                    Text("face.smiling")
                })
            }
                HStack{
                    Text("Recomended tip: \()")
            }
        }
        .padding()
    }
}

#Preview {
    TippingView()
}
