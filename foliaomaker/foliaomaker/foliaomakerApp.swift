//
//  foliaomakerApp.swift
//  foliaomaker
//
//  Created by Hugo Santos on 08/02/21.
//

import SwiftUI

@main
struct foliaomakerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CharacterView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
