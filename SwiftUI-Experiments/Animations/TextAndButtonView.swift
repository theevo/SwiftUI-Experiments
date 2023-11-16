//
//  TextAndButtonView.swift
//  SwiftUI-Experiments
//
//  Created by Theo Vora on 11/11/23.
//

import SwiftUI

struct TextAndButtonView: View {
    @State private var isVisible = false
    @State private var fontSize = 18.0
    
    var body: some View {
        ZStack {
            Text("Hello there!") // not visible
                .font(.system(size: 50.0))
                .opacity(0.0)
            Text("Hello there!")
                .font(.system(size: fontSize))
                .opacity(isVisible ? 1.0 : 0)
                .animation(.easeOut(duration: 0.4).delay(3.0), value: isVisible)
                .animation(.spring.delay(3.0), value: isVisible)
                .onAppear(perform: {
                    withAnimation {
                        isVisible = true
                        fontSize = 50.0
                    }
                })
        }
        Button(action: {
            isVisible.toggle()
            fontSize = isVisible ? 50.0 : 18.0
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
            .scaleEffect(configuration.isPressed ? 0.8 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

#Preview {
    TextAndButtonView()
}
