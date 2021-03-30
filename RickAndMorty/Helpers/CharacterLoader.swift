//
//  CharacterLoader.swift
//  RickAndMorty
//
//  Created by a.verestnikov on 30.03.2021.
//

import Foundation

struct CharacterLoader {

    static func load(name: String, comletion: @escaping (Result<Character?, Error>) -> Void) {
        let url = URL(string: "https://rickandmortyapi.com/api/character/?name=\(name)")!
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                comletion(.failure(error))
            }
            if let data = data {
                do {
                    let remoteData = try JSONDecoder().decode(RemoteData.self, from: data)
                    let character = remoteData.results.first
                    comletion(.success(character))
                } catch {
                    comletion(.failure(error))
                }
            }
        }
        task.resume()
    }

}
