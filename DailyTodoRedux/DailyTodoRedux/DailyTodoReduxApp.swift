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
            TabView {
                TodayView()
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .tabItem {
                        Image(systemName: "play")
                        Text("Today")
                    }
                NextDayView()
                    .tabItem {
                        Image(systemName: "forward")
                        Text("Next day")
                    }
                HistoryView()
                    .tabItem {
                        Image(systemName: "infinity")
                        Text("History")
                    }
            }
        }
    }
}
