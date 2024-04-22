//
//  ContentView.swift
//  SwiftAnimation
//
//  Created by MACBOOK PRO on 22/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var colorChanged = false
    @State private var sizeChange = false
    
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 200, height: 200)
                .foregroundStyle(colorChanged ? .yellow : .purple)
            
            Image(systemName: "heart.fill")
                .foregroundStyle(.white)
                .font(.system(size: 100))
                .scaleEffect(sizeChange ? 1.0 : 0.5)
        }
        
        .animation(.default, value: colorChanged)
        .animation(.default, value: sizeChange)
        .onTapGesture {
            colorChanged.toggle()
            sizeChange.toggle()
        }
    }
}

#Preview {
    ContentView()
}
