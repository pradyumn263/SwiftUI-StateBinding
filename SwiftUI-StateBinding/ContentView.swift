//
//  ContentView.swift
//  SwiftUI-StateBinding
//
//  Created by Pradyumn Shukla on 05/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlaying: Bool = false
    
    var body: some View {
        Button (action: {
            isPlaying.toggle()
        }, label: {
            Image(systemName: isPlaying ? "play.circle.fill" : "stop.circle.fill")
                .font(.system(size: 150))
                .foregroundColor(isPlaying ? .green : .red)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
