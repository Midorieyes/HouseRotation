//
//  ContentView.swift
//  HouseRotation
//
//  Created by Apprenant44 on 30/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State var slide:Double = 12
    var body: some View {
        VStack {
            Image(systemName: "house")
                .resizable()
                .frame(width: 200, height: 200)
                .imageScale(.large)
                .foregroundStyle(.green)
                .rotationEffect(Angle(degrees: slide))
            Slider(value: $slide, in: 0...360)
            
            Text("Degré: \(Int(slide)) °")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
