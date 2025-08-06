AI Interview Prep Coach (iOS + SwiftUI + Ollama + Mistral)
This is a lightweight iOS app built using SwiftUI, MVVM, and Ollama that acts as a local AI-powered interview coach for iOS developers.
It uses the mistral:instruct model running fully on-device (via Ollama) to generate short, Swift-specific interview answers, complete with code examples, edge cases, and follow-up questions.

Designed for fast, focused interview preparation — no API keys, no cloud dependencies.
Features
Ask real iOS interview-style questions (e.g. "What’s the difference between struct and class?")
Runs locally using Ollama and mistral:instruct
Clean, reactive UI built using SwiftUI and MVVM
Answers are always Swift/iOS-specific
Beautiful Markdown rendering in responses
Custom chat bubbles and typing animations
Fast, streaming-free responses with complete offline privacy
Tech Stack
Layer	Technology
Frontend	SwiftUI + MVVM
State Mgmt	Combine
LLM Backend	Ollama (local runner)
Model Used	mistral:instruct
UI Features	Tail chat bubbles, Typing indicator
Markdown	Text(.init(markdown))

Requirements
macOS with Xcode 15+
Swift 5.9 or later
Ollama installed and running locally
Model: mistral:instruct (or optionally llama3)
Port 11434 must be available on localhost

Installation
Clone the Repository
git clone https://github.com/11uvais11/InterviewPrepApp-ollama.git
cd InterviewPrepApp-ollama
Install Ollama
brew install ollama
Pull the Model
ollama pull mistral:instruct
Run the Model
ollama run mistral:instruct
Ollama should now be accessible at http://localhost:11434.

Run the App
Open InterviewPrepApp-ollama.xcodeproj in Xcode
Choose a simulator
Build and run the app
API Details

The app communicates with the locally running Ollama instance via:
POST http://localhost:11434/api/generate
Sample request body:
{
  "model": "mistral:instruct",
  "prompt": "What is the difference between struct and class in Swift?",
  "stream": false
}
Custom Prompt Logic
The app uses a structured prompt to simulate a technical interview:
You are a senior iOS engineer conducting a real-world technical interview.

The candidate asks: "[userInput]"

Reply with ONLY:
1. A short iOS-specific explanation
2. A clean Swift code example with comments
3. One common edge case or mistake
4. Two follow-up interview questions with their Swift-based answers

Use only Swift and iOS topics. Format the answer using markdown. Do not include Python or general language content.
Roadmap
Save chat history locally
Dynamic follow-up Q&A flow
Support for multiple models (LLaMA, CodeLLaMA, etc.)
Voice-based Q&A with speech-to-text integration
macOS Catalyst version of the app
Author
Uvais Khan
iOS Developer · Indie Builder · AI Tinkerer
GitHub · Medium
Acknowledgments
Special thanks to the open-source community:
Ollama — Easy local LLM runner
mistral:instruct — Lightweight, fast model for local inference
The Swift & iOS dev community for making building tools a joy
