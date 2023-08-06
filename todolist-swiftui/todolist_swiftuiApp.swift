//
//  todolist_swiftuiApp.swift
//  todolist-swiftui
//
//  Created by Michelli Cristina de Paulo Lima on 06/08/23.
//

import SwiftUI

@main
struct todolist_swiftuiApp: App {

    @StateObject var listViewModel: ListViewModel = ListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
