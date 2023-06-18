//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Preetham Ananthkumar on 15/06/2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
