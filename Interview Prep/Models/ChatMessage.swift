//
//  ChatMessage.swift
//  Interview Prep
//
//  Created by Rao Uvais khan on 06/08/25.
//

import Foundation

struct ChatMessage: Identifiable {
    let id = UUID()
    let text: String
    let isFromUser: Bool
}
