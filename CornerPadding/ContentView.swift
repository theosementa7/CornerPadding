//
//  ContentView.swift
//  CornerPadding
//
//  Created by KaayZenn on 01/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            .background(Color.red)
            .padding(corner: .bottomLeft, 12)
            .background(Color.green)
            .padding(corner: .bottomRight, 12)
            .background(Color.blue)
            
            Spacer()
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            .background(Color.red)
            .padding([.bottom, .leading], 12)
            .background(Color.green)
            .padding([.bottom, .trailing], 12)
            .background(Color.blue)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
