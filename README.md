# 🎯 AI Interview Prep Coach (iOS + Ollama + LLaMA)

This is a lightweight **iOS app built using SwiftUI, MVVM, and Ollama** that simulates a **tech interview coach powered by LLaMA models**. It allows users to ask iOS interview questions and receive high-quality markdown-formatted responses including Swift code, edge cases, follow-up questions, and more!

> 💡 Perfect for brushing up before interviews or learning concepts through interactive Q&A.

---

## 🚀 Features

- ✅ Ask questions like “What is the difference between struct and class?”
- 🤖 Uses local **Ollama** backend with **LLaMA model**
- 📱 SwiftUI interface with smooth UX
- 📘 Rich **Markdown support** in answers
- 🗯️ Beautiful tail chat bubbles
- ✍️ Typing indicator animation
- 🧠 Follow-up Q&A coming soon!

---

## 📸 Screenshots

| Chat View | Markdown | Typing Indicator |
|----------|-----------|------------------|
| ![](./Screenshots/chat.png) | ![](./Screenshots/markdown.png) | ![](./Screenshots/typing.gif) |

---

## 🧱 Tech Stack

| Layer      | Tech Used                    |
|------------|------------------------------|
| Frontend   | SwiftUI + MVVM               |
| Backend    | Ollama (running locally)     |
| Model      | LLaMA 3 (or any other model) |
| Markdown   | Native SwiftUI `.init(Text)` |
| Typing     | Custom animation             |

---

## 🛠️ Installation

### ✅ Requirements

- macOS with Xcode 15+
- Swift 5.9+
- [Ollama installed](https://ollama.com/)
- LLaMA or any supported model pulled (`ollama pull llama3`)
- Port **11434** must be available on localhost

---

### 📦 Setup Steps

1. **Clone the repo**

```bash
git clone https://github.com/your-username/InterviewPrepApp-ollama.git
cd InterviewPrepApp-ollama
Install Ollama (if not already)
brew install ollama
Pull the model
ollama pull llama3
Run Ollama in background
ollama run llama3
Make sure Ollama is running at http://localhost:11434.
Open the .xcodeproj or .xcworkspace file
Run the app on Simulator 📱
🔌 API Details
The app sends a POST request to:
POST http://localhost:11434/api/generate
With payload:
{
  "model": "llama3",
  "prompt": "Your user question here",
  "stream": false
}
✍️ Custom Prompt Logic
🎯 You are a senior iOS engineer conducting a real-world iOS developer interview.

The candidate has asked: "\(userInput)"

✅ Please answer with:
1. 📘 Beginner-friendly explanation
2. 🧠 Real-world iOS use cases (Swift, MVVM, ARC)
3. 💡 Best practices
4. 💻 Swift code sample
5. ⚠️ Edge cases
6. ❓ Follow-up questions + Swift answers
🧪 Coming Soon
✅ Save chat history
✅ Dynamic follow-up question handling
✅ Model switching (CodeLLaMA, Mistral, etc.)
✅ Voice-based Q&A (AI Speech-to-Text)
✅ macOS Catalyst support
🙋‍♂️ Author
Made by @11uvais11 — iOS dev with a passion for building AI-powered tools, tech+fun content, and grooming 🧠⚙️💈

