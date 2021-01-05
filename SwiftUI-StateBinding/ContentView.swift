//
//  ContentView.swift
//  SwiftUI-StateBinding
//
//  Created by Pradyumn Shukla on 05/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var ButtonOneCount: Int = 0
    @State private var ButtonTwoCount: Int = 0
    @State private var ButtonThreeCount: Int = 0
    @State private var TotalClickCount: Int = 0
    var body: some View {
        
        VStack {
            
            Text("\(TotalClickCount)")
                .font(.system(size: 200, design: .rounded))
            
            HStack {
                ButtonWithCounter(clickCount: $ButtonOneCount, totalClicks: $TotalClickCount, bgColor: Color.red)
                ButtonWithCounter(clickCount: $ButtonTwoCount, totalClicks: $TotalClickCount, bgColor: Color.blue)
                ButtonWithCounter(clickCount: $ButtonThreeCount, totalClicks: $TotalClickCount, bgColor: Color.green)
                
            }
        }
    }
}

struct ButtonWithCounter: View {
    @Binding var clickCount: Int
    @Binding var totalClicks: Int
    var bgColor: Color
    
    var body: some View {
        Button (action: {
            clickCount += 1
            totalClicks += 1
        }, label: {
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(bgColor)
                .overlay(
                    Text("\(clickCount)")
                        .font(.system(size: 50, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                )
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
