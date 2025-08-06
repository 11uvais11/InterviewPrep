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
        🎯 You are a **senior iOS engineer** conducting a real-world iOS developer interview.

        The candidate has asked: "\(userInput)"

        ✅ Please answer with:
        1. 📘 A clear, beginner-friendly explanation
        2. 🧠 Real-world Swift/iOS use cases (e.g., Combine, MVVM, ARC, UIKit, SwiftUI)
        3. 💡 Best practices from top iOS teams (Apple, Meta, etc.)
        4. 🧑‍💻 A clean **Swift code example** with comments
        5. ⚠️ Edge cases / gotchas
        6. ❓ 4-5 **follow-up questions** and their **Swift-based** answers

        👉 Format the answer in markdown with headings, bullet points, and Swift code blocks.
        ❌ Do not use any other programming language like C# or Python.
        """
    }
}
