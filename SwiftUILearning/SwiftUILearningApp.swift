//
//  SwiftUILearningApp.swift
//  SwiftUILearning
//
//  Created by Yakup Kavak on 15.12.2024.
//

import SwiftUI

@main
struct SwiftUILearningApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
