//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Characters: View {
    
    @ObservedObject var charactervm = CharacterViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(charactervm.characterResults) { character in
                    NavigationLink {
                        CharacterDetail(character: character)
                    } label: {
                        Text(character.name)
                    }
                }
            }
            .task {
                await charactervm.fetchData()
            }
            .listStyle(.grouped)
            .navigationTitle("Rick & Morty Character List")
            .navigationBarTitleDisplayMode(.inline)
            .alert(isPresented: $charactervm.hasError, error: charactervm.error, actions: {
                Button("Retry") {
                    Task {
                        await charactervm.fetchData()
                    }
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Characters()
    }
}
