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
            Image(systemName: status == "Alive" ? "person.fill.checkmark" : "person.fill.xmark")
            Text("Status: \(status)")
        }
    }
}
