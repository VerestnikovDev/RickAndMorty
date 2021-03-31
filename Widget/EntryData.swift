//
//  EntryData.swift
//  RickAndMorty
//
//  Created by a.verestnikov on 31.03.2021.
//

import WidgetKit

struct EntryData: TimelineEntry {
    let date: Date
    let name: String
    let status: Status
    let url: String

    static var defaultValue: Self { .init(date: Date(), name: "Rick", status: .alive, url: "") }
}
