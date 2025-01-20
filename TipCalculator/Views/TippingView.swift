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
    @State var serviceQuality: Int = 2
    
    //Mark: Computed properties
    var recomendedTip: String {
        if serviceQuality == 1 {
            return ("10-15 %")
        }
        else if serviceQuality == 2
                    {
            return ("15-18 %")
        }
        else {
            return ("18-25 %")
        }
        
        }
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
                    serviceQuality = 2
                } , label:{
                    Image( systemName: ("face.frowning"))
                })
                Button(action:{
                    serviceQuality = 2
                } , label:{
                    Image(systemName: "face.smiling")
                })
                Button(action:{
                    serviceQuality = 3
                } , label:{
                    Image(systemName:"face.smiling")
                })
            }
                HStack{
                    Text("Recomended tip: \(recomendedTip)")
            }
        }
        .padding()
    }
}

#Preview {
    TippingView()
}
