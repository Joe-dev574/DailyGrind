//
//  DailyGrindApp.swift
//  DailyGrind
//
//  Created by Joseph DeWeese on 2/5/25.
//

import SwiftUI
import SwiftData

@main
struct DailyGrindApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            MainContentListScreen()
        }
        .modelContainer(sharedModelContainer)
    }
}
