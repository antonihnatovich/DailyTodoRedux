//
//  Middleware.swift
//  DailyTodoRedux
//
//  Created by Антон on 12/02/2023.
//

import Foundation

typealias Middleware<StoreState: ReduxState> = (StoreState, Action, @escaping Dispatcher) -> Void
