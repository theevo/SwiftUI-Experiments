//
//  ContentView.swift
//  SwiftUI-Experiments
//
//  Created by Theo Vora on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button(action: {
            print("button pressed")
        }, label: {
            Text("Button")
        })
    }
}

#Preview {
    ContentView()
}
