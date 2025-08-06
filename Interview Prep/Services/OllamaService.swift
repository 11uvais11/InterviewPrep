//
//  OllamaService.swift
//  Interview Prep
//
//  Created by Rao Uvais khan on 06/08/25.
//

import Foundation

struct AIResponse: Decodable {
    let response: String
    let done: Bool
}

final class OllamaService {
    static let shared = OllamaService()
    private let apiURL = URL(string: "http://localhost:11434/api/generate")!

    private init() {}

    func generateResponse(for prompt: String, model: String = "mistral:instruct") async throws -> String {
        let requestPayload: [String: Any] = [
            "model": model,
            "prompt": prompt,
            "stream": false
        ]

        var request = URLRequest(url: apiURL)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try JSONSerialization.data(withJSONObject: requestPayload)

        let (data, _) = try await URLSession.shared.data(for: request)

        let decoded = try JSONDecoder().decode(AIResponse.self, from: data)
        return decoded.response
    }
}
