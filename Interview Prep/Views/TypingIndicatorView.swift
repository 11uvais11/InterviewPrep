//
//  TypingIndicatorView.swift
//  Interview Prep
//
//  Created by Rao Uvais khan on 06/08/25.
//


import SwiftUI

struct TypingIndicatorView: View {
    @State private var scale: CGFloat = 0.8

    var body: some View {
        HStack {
            Circle().frame(width: 8, height: 8).scaleEffect(scale)
            Circle().frame(width: 8, height: 8).scaleEffect(scale)
            Circle().frame(width: 8, height: 8).scaleEffect(scale)
        }
        .foregroundColor(.gray)
        .padding(10)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(16)
        .onAppear {
            withAnimation(.easeInOut(duration: 0.6).repeatForever()) {
                scale = 1.2
            }
        }
    }
}
