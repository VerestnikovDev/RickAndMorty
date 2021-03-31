//
//  StaticWidget.swift
//  MyWidgetExtension
//
//  Created by a.verestnikov on 31.03.2021.
//

import WidgetKit
import SwiftUI

struct StaticWidget: Widget {

    let kind = "StaticWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: StaticProvider(), content: { entry in
            CharacterView(entry: entry)
        })
        .configurationDisplayName("Rick And Morty")
        .description("Static Configuration")
        .supportedFamilies([.systemSmall])
    }
}
