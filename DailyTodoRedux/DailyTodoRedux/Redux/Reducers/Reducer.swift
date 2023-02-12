//
//  Reducer.swift
//  DailyTodoRedux
//
//  Created by Антон on 12/02/2023.
//

import Foundation

typealias Reducer<State: ReduxState> = (_ state: State, _ action: Action) -> State
