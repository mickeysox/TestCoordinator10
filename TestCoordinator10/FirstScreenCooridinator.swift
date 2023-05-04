//
//  FirstScreenCooridinator.swift
//  TestCoordinator10
//
//  Created by Development on 02/05/2023.
//

import Foundation
import SwiftUI
import Factory

struct FirstScreenCoordinator<Content: View>: View {
    
    @InjectedObject(\.appFlowState) var state: AppFlowState

    @ViewBuilder var content: () -> Content
    
    var body: some View {
        NavigationStack(path: self.$state.path) {
            content().navigationDestination(for: FirstScreenRoutes.self, destination: self.route(to:))
        }
    }
    
    @ViewBuilder private func route(to route: FirstScreenRoutes) -> some View {
        switch route {
        case .second:
            secondDestination()
        }
    }
    
    private func secondDestination() -> some View {
        return Text("Second Screen")
    }
}
