//
//  CharacterViewModel.swift
//  Assignment3
//
//  Created by Kyle Zimmerman on 3/30/24.
//

import Foundation

class CharacterViewModel : ObservableObject {
    
    @Published private(set) var characterResults = [Character]()
    @Published var hasError = false
    @Published var error: CharacterModelError?
    private let url = "https://rickandmortyapi.com/api/character"
    
    @MainActor
    func fetchData() async {
        if let url = URL(string: self.url) {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                guard let result = try JSONDecoder().decode(CharacterResults?.self, from: data) else {
                    self.hasError.toggle()
                    self.error = CharacterModelError.decodeError
                    return
                }
                self.characterResults = result.results
            } catch {
                self.hasError.toggle()
                self.error = CharacterModelError.customeError(error: error)
            }
        }
    }
}

extension CharacterViewModel {
    enum CharacterModelError : LocalizedError {
        case decodeError
        case customeError(error: Error)
        
        var errorDescription: String? {
            switch self {
            case .decodeError:
                return "Decoding Error"
            case .customeError(let error):
                return error.localizedDescription
            }
        }
    }
}
    
    

