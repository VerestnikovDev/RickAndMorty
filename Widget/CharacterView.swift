//
//  File.swift
//  MyWidgetExtension
//
//  Created by a.verestnikov on 31.03.2021.
//

import SwiftUI
import WidgetKit

struct CharacterView: View {

    let entry: EntryData

    var body: some View {
        VStack(alignment: .leading, spacing: 8, content: {
            NetworkImage(url: entry.url)
            Text(entry.name)
                .font(.body)
                .bold()
                .foregroundColor(.white)
            HStack {
                Text("Статус:")
                    .font(.footnote)
                    .foregroundColor(.white)
                Text(entry.status.rawValue)
                    .font(.footnote)
                    .bold()
                    .foregroundColor(getColor(entry.status))
                Spacer()
            }
        })
        .padding()
        .background(Color.black)
    }

    private func getColor(_ status: Status) -> Color {
        switch status {
        case .alive: return .green
        case .dead: return .red
        case .unknown: return .gray
        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(entry: .defaultValue)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
