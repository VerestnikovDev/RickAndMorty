//
//  RemoteData.swift
//  RickAndMorty
//
//  Created by a.verestnikov on 30.03.2021.
//

import Foundation

struct RemoteData: Codable {
    let info: Info
    let results: [Character]
}

// MARK: - Info
struct Info: Codable {
    let count: Int
    let pages: Int
}

// MARK: - Result
struct Character: Codable {
    let id: Int
    let name: String
    let status: Status
    let species: String
    let type: String
    let gender: Gender
    let origin: Location
    let location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

enum Gender: String, Codable {
    case female = "Female"
    case male = "Male"
    case unknown = "unknown"
}

// MARK: - Location
struct Location: Codable {
    let name: String
    let url: String
}

enum Status: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
