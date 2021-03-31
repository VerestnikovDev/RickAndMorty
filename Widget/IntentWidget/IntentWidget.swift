//
//  IntentWidget.swift
//  MyWidgetExtension
//
//  Created by a.verestnikov on 31.03.2021.
//

import WidgetKit
import SwiftUI

struct IntentWidget: Widget {

    let kind = "IntentWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: IntentProvider(), content: { entry in
            CharacterView(entry: entry)
        })
        .configurationDisplayName("Rick And Morty")
        .description("Intent Configuration")
        .supportedFamilies([.systemSmall])
    }
}
