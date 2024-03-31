//
//  CharacterImageView.swift
//  Assignment3
//
//  Created by Kyle Zimmerman on 3/30/24.
//

import SwiftUI

struct CharacterImageView: View {
    var imageURL: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { image in
            image.resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 350, height: 350)
                .padding(.horizontal)
        } placeholder: {
            ProgressView()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 350, height: 350)
                .padding(.horizontal)
        }
    }
}
