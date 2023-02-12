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
    let store = Store(reducer: appReducer, state: AppState(), middlewares: [])
    
    var body: some Scene {
        WindowGroup {
            TabView {
                TodayView()
                    .environmentObject(store)
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .tabItem {
                        Image(systemName: "play")
                        Text("Today")
                    }
                NextDayView()
                    .environmentObject(store)
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .tabItem {
                        Image(systemName: "forward")
                        Text("Next day")
                    }
                HistoryView()
                    .environmentObject(store)
                    .environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .tabItem {
                        Image(systemName: "infinity")
                        Text("History")
                    }
            }
        }
    }
}
