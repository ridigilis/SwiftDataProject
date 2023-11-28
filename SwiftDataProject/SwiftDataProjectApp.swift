//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Ricky David Groner II on 11/27/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
