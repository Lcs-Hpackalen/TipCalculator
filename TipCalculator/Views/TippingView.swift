//
//  ContentView.swift
//  TipCalculator
//
//  Created by Hannu Packalen on 2025-01-20.
//

import SwiftUI

struct TippingView: View {
    //Mark: Stored properties
    let recommendedTips: [Double] = [0.1, 0.15, 0.2]
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
                
            }
        }
        .padding()
    }
}

#Preview {
    TippingView()
}
