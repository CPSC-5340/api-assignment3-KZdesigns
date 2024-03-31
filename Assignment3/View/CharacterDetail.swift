//
//  CharacterDetail.swift
//  Assignment3
//
//  Created by Kyle Zimmerman on 3/30/24.
//

import SwiftUI

struct CharacterDetail: View {
    
    var character : Character
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text(character.name)
                .font(.system(size: 32))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom)
                .padding(.leading)
            
            CharacterStatus(status: character.status)
                .font(.system(size: 22))
                .padding(.horizontal)
            
            Text("Species: \(character.species)")
                .font(.system(size: 22))
                .padding(.horizontal)
            
            if !character.type.isEmpty {
                Text("Type: \(character.type)")
                    .font(.system(size: 18))
                    .padding(.horizontal)
            }
            
            if !character.gender.isEmpty {
                Text("Gender: \(character.gender)")
                    .font(.system(size: 18))
                    .padding(.horizontal)
            }
           
            if !character.origin.name.isEmpty {
                Text("Origin: \(character.origin.name)")
                    .font(.system(size: 18))
                    .padding(.horizontal)
                    .padding(.bottom)
            }
            
            CharacterImageView(imageURL: character.image);
        }
    }
}
