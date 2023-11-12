//
// This source file is part of the Stanford Spezi open source project
//
// SPDX-FileCopyrightText: 2022 Stanford University and the project authors (see CONTRIBUTORS.md)
//
// SPDX-License-Identifier: MIT
//

import Foundation


public struct ChatEntity: Codable, Equatable {
    public enum Role: String, Codable, Equatable {
        case system
        case assistant
        case user
        case function
    }
    
    enum Alignment {
        case leading
        case trailing
    }
    
    
    public let role: Role
    public let content: String
    
    
    var alignment: Alignment {
        switch self.role {
        case .user:
            return .trailing
        default:
            return .leading
        }
    }
    
    
    public init(role: Role, content: String) {
        self.role = role
        self.content = content
    }
}
