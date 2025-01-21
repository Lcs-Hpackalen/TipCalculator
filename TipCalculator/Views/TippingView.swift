//
//  ContentView.swift
//  TipCalculator
//
//  Created by Hannu Packalen on 2025-01-20.
//

import SwiftUI

struct TippingView: View {
    //Mark: Stored properties
    @State var tip: Int = 15
    @State var serviceQuality: Int = 2
    @State var bill: Double = 22.50
    
    //Mark: Computed properties
    var tipDecimal: Double {
        return Double(tip)/100
    }
    var totalBill: Double {
        return bill + (bill * tipDecimal)
    }
    var tipAmount: Double {
        return (bill * Double(tipDecimal))
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
                    TextField("Bill amount", value: $bill, format: .currency(code: "CAD"))
                        .textFieldStyle(.roundedBorder)
                        .keyboardType(.numberPad)
                        .padding(.horizontal)
                }
                Spacer()
                VStack{
                    Text("Tip: \(tip.formatted(.percent))")
                        .font(.system(size: 29))
                    HStack{
                        Stepper( "",value: $tip, in: 0...100)
                            .padding(.trailing)
                        Spacer()
                    }
                }
            }
            Divider()
            HStack{
                Text("Tip value: \(tipAmount.formatted(.currency(code:"CAD")))")
                    .font(.system(size: 30))
                Spacer()
            }
            Spacer()
            HStack{
                Text("Total Bill: \(totalBill.formatted(.currency(code: "CAD")))")
                    .font(.system(size: 30))
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TippingView()
}
