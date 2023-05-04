//
//  TestCoordinator10App.swift
//  TestCoordinator10
//
//  Created by Development on 02/05/2023.
//

import SwiftUI

class AppFlowState: ObservableObject {
    @Published var path = NavigationPath()
}

@main
struct TestCoordinator10App: App {
    var body: some Scene {
        WindowGroup {
            FirstScreen()
        }
    }
}
