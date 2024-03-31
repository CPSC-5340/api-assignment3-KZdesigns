//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Characters: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    CharacterDetail()
                } label: {
                    Text("Character 1")
                }
                NavigationLink {
                    CharacterDetail()
                } label: {
                    Text("Character 2")
                }
                NavigationLink {
                    CharacterDetail()
                } label: {
                    Text("Character 3")
                }
                NavigationLink {
                    CharacterDetail()
                } label: {
                    Text("Character 4")
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Rick & Morty Character List")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Characters()
    }
}
