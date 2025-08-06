//
//  ChatViewModel.swift
//  Interview Prep
//
//  Created by Rao Uvais khan on 06/08/25.
//

import Foundation
import Combine

@MainActor
final class ChatViewModel: ObservableObject {
    @Published var messages: [Message] = []
    @Published var currentInput: String = ""
    @Published var isThinking: Bool = false

    private var cancellables = Set<AnyCancellable>()

    func sendMessage() {
        let prompt = currentInput.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !prompt.isEmpty else { return }

        // Add user message to chat
        let userMessage = Message(role: .user, content: prompt)
        messages.append(userMessage)
        currentInput = ""
        isThinking = true

        Task {
            do {
                let response = try await OllamaService.shared.generateResponse(for: prompt)
                let aiMessage = Message(role: .assistant, content: response)
                messages.append(aiMessage)
            } catch {
                messages.append(.init(role: .assistant, content: "❌ Error: \(error.localizedDescription)"))
            }
            isThinking = false
        }
    }
}

