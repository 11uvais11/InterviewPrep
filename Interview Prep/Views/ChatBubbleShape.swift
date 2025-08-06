//
//  ChatBubbleShape.swift
//  Interview Prep
//
//  Created by Rao Uvais khan on 06/08/25.
//


struct ChatBubbleShape: Shape {
    var isFromUser: Bool

    func path(in rect: CGRect) -> Path {
        let radius: CGFloat = 16
        var path = RoundedRectangle(cornerRadius: radius).path(in: rect)

        // Add tail
        let tailSize: CGFloat = 6
        var tail = Path()

        if isFromUser {
            tail.move(to: CGPoint(x: rect.maxX - 10, y: rect.maxY))
            tail.addLine(to: CGPoint(x: rect.maxX - 4, y: rect.maxY + tailSize))
            tail.addLine(to: CGPoint(x: rect.maxX - 16, y: rect.maxY))
        } else {
            tail.move(to: CGPoint(x: rect.minX + 10, y: rect.maxY))
            tail.addLine(to: CGPoint(x: rect.minX + 4, y: rect.maxY + tailSize))
            tail.addLine(to: CGPoint(x: rect.minX + 16, y: rect.maxY))
        }

        path.addPath(tail)
        return path
    }
}