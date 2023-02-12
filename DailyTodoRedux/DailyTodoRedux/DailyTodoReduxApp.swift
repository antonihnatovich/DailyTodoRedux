//
//  DailyTodoReduxApp.swift
//  DailyTodoRedux
//
//  Created by Антон on 12/02/2023.
//

import SwiftUI

@main
struct DailyTodoReduxApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
