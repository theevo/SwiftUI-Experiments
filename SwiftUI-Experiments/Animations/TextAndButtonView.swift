//
//  TextAndButtonView.swift
//  SwiftUI-Experiments
//
//  Created by Theo Vora on 11/11/23.
//

import SwiftUI

struct TextAndButtonView: View {
    @State private var isVisible = false
    
    var body: some View {
        Text("Hello there!")
            .opacity(isVisible ? 1.0 : 0)
            .animation(.easeOut(duration: 0.4), value: isVisible)
        Button(action: {
            isVisible.toggle()
        }, label: {
            Text("Button")
        })
        .buttonStyle(GrowingButton())
    }
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.accentColor)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

#Preview {
    TextAndButtonView()
}
