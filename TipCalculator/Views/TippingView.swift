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
    @State var bill: Double = 22.50
    
    //Mark: Computed properties
    var totalBill: Double {
        return bill + (bill * (tip/100))
    }
    
    
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
                    .font(.system(size: 45))
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            Divider()
                .bold()
            HStack{
                Text("service was...")
                    .font(.title2)
                Spacer()
            }
            HStack{
                Button(action:{
                    serviceQuality = 1
                } , label:{
                    Image ( "SadFace")
                        .resizable()
                        .scaledToFit()
                })
                 
                    Button(action:{
                        serviceQuality = 2
                    } , label:{
                        Image( "StraightFace")
                            .resizable()
                            .scaledToFit()
                    })
                Button(action:{
                    serviceQuality = 3
                } , label:{
                    Image( "HappyFace")
                        .resizable()
                        .scaledToFit()
                })
            }
                HStack{
                    Text("Recomended tip: \(recomendedTip)")
                    
                        .font(.system(size: 30))
            }
            Divider()
                .bold()
                .padding()
            HStack{
                VStack{
                    Text("Bill: \(bill.formatted(.currency(code:"CAD")))")
                        .font(.system(size: 29))
                }
                Text("Tip: \(tip.formatted(.percent))")
                    .font(.system(size: 29))
                Spacer()
            }
            
        }
        .padding()
    }
}

#Preview {
    TippingView()
}
