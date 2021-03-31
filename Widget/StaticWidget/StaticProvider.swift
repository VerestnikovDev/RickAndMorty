//
//  StaticProvider.swift
//  MyWidgetExtension
//
//  Created by a.verestnikov on 31.03.2021.
//

import WidgetKit

struct StaticProvider: TimelineProvider {

    typealias Entry = EntryData

    func placeholder(in context: Context) -> EntryData {
        .defaultValue
    }

    func getSnapshot(in context: Context, completion: @escaping (EntryData) -> Void) {
        completion(.defaultValue)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<EntryData>) -> Void) {
        let storage = UserDefaults(suiteName: "group.com.verestnikov.dev.RickAndMorty")
        let name = storage?.string(forKey: "CharacterName") ?? "Rick"

        CharacterLoader.load(name: name) { result in
            let entry: EntryData
            switch result {
            case let .success(character):
                let name = character?.name ?? "Rick"
                let status = character?.status ?? .unknown
                let url = character?.image ?? ""
                entry = .init(date: Date(), name: name, status: status, url: url)
            case .failure:
                entry = .defaultValue
            }
            let timeline = Timeline(entries: [entry], policy: .never)
            completion(timeline)
        }
    }
}
