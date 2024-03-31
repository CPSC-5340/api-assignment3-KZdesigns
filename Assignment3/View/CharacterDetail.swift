//
//  CharacterDetail.swift
//  Assignment3
//
//  Created by Kyle Zimmerman on 3/30/24.
//

import SwiftUI

struct CharacterDetail: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text("Rick Sanchez")
                .font(.system(size: 32))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom)
                .padding(.leading)
            
            CharacterStatus(status: "Alive")
                .font(.system(size: 22))
                .padding(.horizontal)
            
            Text("Species: Human")
                .font(.system(size: 22))
                .padding(.horizontal)
            
            Text("Type: ")
                .font(.system(size: 18))
                .padding(.horizontal)
            
            Text("Gender: ")
                .font(.system(size: 18))
                .padding(.horizontal)
            
            Text("Origin: ")
                .font(.system(size: 18))
                .padding(.horizontal)
                .padding(.bottom)
            
            CharacterImageView(imageURL: "https://rickandmortyapi.com/api/character/avatar/1.jpeg");
        }
    }
}

#Preview {
    CharacterDetail()
}
