//
//  ContentView.swift
//  LOTR Converter
//
//  Created by Ahmed Hamam on 16/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showExchangeInfo = false
    @State var silverAmount = ""
    @State var goldAmount = ""
    
    var body: some View {
        ZStack {
            // background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                // prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                // currency exchange text
                Text("Curreny Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                // conversion section
                
                HStack {
                    // left conversion section
                    
                    VStack {
                        // currency
                        
                        HStack{
                            // currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            // currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                                
                        }
                        .padding(.bottom, -5)
                        
                        // text field
                        TextField("Amount", text: $silverAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                    // equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    // right conversion section
                    
                    VStack {
                       // currency
                       
                        HStack{
                            // currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            // currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)
                        
                        // text field
                        TextField("Amount", text: $goldAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(Color.black.opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                // info button
                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                }
                .padding(.trailing)
            }
        }
    }
}

#Preview {
    ContentView()
}
