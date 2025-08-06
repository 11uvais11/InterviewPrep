//
//  PromptBuilder.swift
//  Interview Prep
//
//  Created by Rao Uvais khan on 06/08/25.
//

import Foundation

struct PromptBuilder {
    static func createPrompt(from userInput: String) -> String {
        return """
        🎯 You are a **senior iOS engineer** conducting a technical interview.

        The candidate asked: "\(userInput)"

        🧠 Please provide a response in **Markdown format**, and include only Swift/iOS-specific content.

        ✅ Your response must include:
        1. 📘 A short, clear explanation relevant to iOS.
        2. 🧑‍💻 A clean and commented **Swift code example**.
        3. ⚠️ One common **edge case** or gotcha to be aware of.
        4. ❓ Two **follow-up iOS interview questions**, each with brief Swift-based answers.

        💡 Stick to these topics only:
        - Swift (structs, classes, ARC, closures, optionals, protocols, generics)
        - iOS frameworks (UIKit, SwiftUI, Combine, Foundation, CoreData)
        - App architecture (MVVM, delegation, async/await, dependency injection)

        ❌ Do not use any other language (no Python, JS, or C#).
        ❌ Do not give unnecessary theory — focus on **iOS job interview context**.
        """
    }
}

