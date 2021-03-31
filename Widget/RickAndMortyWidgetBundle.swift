//
//  MyWidget.swift
//  MyWidget
//
//  Created by a.verestnikov on 31.03.2021.
//

import WidgetKit
import SwiftUI

@main
struct RickAndMortyWidgetBundle: WidgetBundle {
    @WidgetBundleBuilder
    var body: some Widget {
        StaticWidget()
        IntentWidget()
    }
}
