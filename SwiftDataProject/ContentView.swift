//
//  ContentView.swift
//  SwiftDataProject
//
//  Created by Ricky David Groner II on 11/27/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query(sort: \User.name) var users: [User]
    @State private var path = [User]()
    
    var body: some View {
        NavigationStack(path: $path) {
            List(users) { user in
                Text(user.name)
            }
        }
        .navigationTitle("Users")
        .navigationDestination(for: User.self) { user in
                EditUserView(user: user)
        }
        .toolbar {
            Button("Add User", systemImage: "plus") {
                let user = User(name: "", city: "", joinDate: .now)
                modelContext.insert(user)
                path = [user]
            }
        }
    }
}
