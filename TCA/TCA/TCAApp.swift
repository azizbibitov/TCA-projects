//
//  TCAApp.swift
//  TCA
//
//  Created by Aziz Bibitov on 16.03.2024.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCAApp: App {
    
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: TCAApp.store)
        }
    }
}
