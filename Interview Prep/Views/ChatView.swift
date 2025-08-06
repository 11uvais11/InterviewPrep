import SwiftUI

struct ChatView: View {
    @StateObject private var viewModel = ChatViewModel()

    var body: some View {
        VStack(spacing: 0) {
            // MARK: - Header
            HStack {
                Text("🎯 iOS Interview Prep")
                    .font(.headline)
                    .padding(.horizontal)
                    .padding(.vertical, 10)
                Spacer()
            }
            .background(Color(.systemGray6))
            .shadow(radius: 1)

            Divider()

            // MARK: - Messages
            ScrollViewReader { proxy in
                ScrollView {
                    LazyVStack(alignment: .leading, spacing: 8) {
                        ForEach(viewModel.messages) { message in
                            ChatBubbleView(message: message)
                        }

                        if viewModel.isThinking {
                            TypingIndicatorView()
                                .padding(.leading, 16) // Fix: prevent touching screen edge
                        }
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 4)
                    .onChange(of: viewModel.messages.count) { _ in
                        withAnimation {
                            proxy.scrollTo(viewModel.messages.last?.id, anchor: .bottom)
                        }
                    }
                }
            }

            // MARK: - Input Box
            VStack(spacing: 4) {
                ZStack(alignment: .topLeading) {
                    if viewModel.currentInput.isEmpty {
                        Text("Ask iOS questions like 'What's ARC in Swift?'")
                            .foregroundColor(.gray)
                            .padding(.horizontal, 12)
                            .padding(.top, 10)
                    }

                    TextEditor(text: $viewModel.currentInput)
                        .frame(minHeight: 40, maxHeight: 80) // Reduced height ✅
                        .padding(8)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                }

                HStack {
                    Spacer()
                    Button(action: {
                        viewModel.sendMessage()
                    }) {
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(.white)
                            .padding(10)
                            .background(viewModel.currentInput.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? Color.gray : Color.blue)
                            .cornerRadius(8)
                    }
                    .disabled(viewModel.currentInput.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                }
            }
            .padding()
            .background(Color.white)
        }
        .background(Color(.systemGroupedBackground))
        .ignoresSafeArea(edges: .bottom)
    }
}
