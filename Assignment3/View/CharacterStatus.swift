//
//  CharacterStatus.swift
//  Assignment3
//
//  Created by Kyle Zimmerman on 3/30/24.
//

import SwiftUI

struct CharacterStatus: View {
    var status: String

    
    var body: some View {
        HStack {
            Image(systemName: iconName(for: status))
            Text("Status: \(status)")
        }
    }
    
    private func iconName(for status: String) -> String {
        switch status {
        case "Alive":
            return "person.fill.checkmark"
        case "unknown":
            return "person.fill.questionmark"
        default:
            return "person.fill.xmark"
        }
    }
}
