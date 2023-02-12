//
//  NextDayView.swift
//  DailyTodoRedux
//
//  Created by Антон on 12/02/2023.
//

import SwiftUI
import CoreData

struct NextDayView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @EnvironmentObject var store: Store<AppState>
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct NextDayView_Previews: PreviewProvider {
    static var previews: some View {
        NextDayView()
    }
}
