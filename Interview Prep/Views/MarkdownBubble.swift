//
//  MarkdownBubble.swift
//  Interview Prep
//
//  Created by Rao Uvais khan on 06/08/25.
//


struct MarkdownBubble: View {
    let text: String
    let isFromUser: Bool

    var body: some View {
        Text(.init(text))
            .padding(12)
            .background(isFromUser ? Color.blue : Color.gray.opacity(0.2))
            .foregroundColor(isFromUser ? .white : .black)
            .clipShape(ChatBubbleShape(isFromUser: isFromUser))
            .frame(maxWidth: UIScreen.main.bounds.width * 0.7, alignment: isFromUser ? .trailing : .leading)
    }
}