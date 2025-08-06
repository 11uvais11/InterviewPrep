AI Interview Prep Coach (iOS + SwiftUI + Ollama + Mistral)
This is a lightweight iOS app built using SwiftUI, MVVM, and Ollama that simulates a technical interview coach for iOS developers powered by local LLMs like mistral:instruct.
Ask Swift and iOS interview questions and get short, clean, Swift-based answers with follow-up questions, markdown formatting, edge cases, and more — 100% offline!

💡 Perfect for brushing up before interviews or learning Swift/iOS concepts through fast interactive Q&A.
🚀 Features
✅ Ask real iOS interview-style questions (e.g. “struct vs class?”)
🤖 Powered by Mistral running locally via Ollama
📱 Built using SwiftUI + MVVM
🧠 iOS-specific answers only — no Python, no cloud, no nonsense
📘 Beautiful Markdown rendering
🗯️ Tail-style chat bubbles
✍️ Typing animation indicator
⏱️ Blazing fast replies (local LLM)
🧱 Tech Stack
Layer	Tech Used
Frontend	SwiftUI + MVVM
State Mgmt	Combine
AI Engine	Ollama (mistral:instruct)
Markdown	Text(.init(markdown))
Animation	Custom SwiftUI Typing Indicator

Installation Guide
Requirements
macOS with Xcode 15+
Swift 5.9+
Ollama installed locally
Model pulled: mistral:instruct (or use llama3)
Port 11434 open on localhost


Setup
Clone the repo
git clone https://github.com/11uvais11/InterviewPrepApp-ollama.git
cd InterviewPrepApp-ollama


Install Ollama
brew install ollama
Pull the model
ollama pull mistral:instruct
Run Ollama
ollama run mistral:instruct

Make sure it’s running on:
http://localhost:11434

Open Xcode
Open the .xcodeproj file
Select any Simulator
Run the app 

 API Overview
The app sends a POST request to:
POST http://localhost:11434/api/generate
With JSON payload:
{
  "model": "mistral:instruct",
  "prompt": "Your iOS interview question",
  "stream": false
}
 Prompt Logic (Custom)
  You are a senior iOS engineer conducting a real-world technical interview.

The candidate asks: "\(userInput)"

 Reply with ONLY:
1. 📘 Short iOS-specific explanation
2. 🧑‍💻 Swift code example (clean + commented)
3. ⚠️ Common edge case
4. ❓ 2 follow-up iOS questions with Swift-based answers

 Use Swift language only.
 No Python, no cloud-based answers.
 Format everything using Markdown.
 Coming Soon
 Save chat history locally
 Dynamic follow-up Q&A loop
 Switch between models (LLaMA, CodeLLaMA, etc.)
 Voice Q&A using Speech-to-Text
 macOS Catalyst Support
 
 Author
Uvais Khan – iOS Developer, Indie Builder, AI tinkerer
🔗 GitHub | Medium

Shoutouts
Special thanks to:
Ollama – Run LLMs locally with a single command.
Mistral:Instruct – Lightweight, blazing-fast model tuned for devs.
The Swift Community – For tools that make learning feel like building.
