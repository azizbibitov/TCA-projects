//
//  ContactsTCAApp.swift
//  ContactsTCA
//
//  Created by Aziz Bibitov on 18.03.2024.
//

import SwiftUI
import ComposableArchitecture

@main
struct ContactsTCAApp: App {
    var body: some Scene {
        WindowGroup {
            ContactsView(
                store: Store(
                    initialState: ContactsFeature.State(
                        contacts: [
                            Contact(id: UUID(), name: "Aziz"),
                            Contact(id: UUID(), name: "Bibit"),
                            Contact(id: UUID(), name: "Ahmet"),
                        ]
                    ),
                    reducer: {
                        ContactsFeature()
                    }
                )
            )
        }
    }
}
