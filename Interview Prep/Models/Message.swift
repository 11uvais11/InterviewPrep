//
//  Message.swift
//  Interview Prep
//
//  Created by Rao Uvais khan on 06/08/25.
//


import Foundation

struct Message: Identifiable {
    enum Role {
        case user
        case assistant
    }

    let id = UUID()
    let role: Role
    let content: String
}
