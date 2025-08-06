//
//  ChatBubbleView.swift
//  Interview Prep
//
//  Created by Rao Uvais khan on 06/08/25.
//


import SwiftUI

struct ChatBubbleView: View {
    let message: Message

    var body: some View {
        HStack(alignment: .bottom) {
            if message.role == .assistant {
                MarkdownBubble(text: message.content, isFromUser: false)
                Spacer()
            } else {
                Spacer()
                MarkdownBubble(text: message.content, isFromUser: true)
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 4)
    }
}
