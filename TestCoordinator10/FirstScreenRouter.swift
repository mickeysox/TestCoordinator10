//
//  FirstScreenRouter.swift
//  TestCoordinator10
//
//  Created by Development on 02/05/2023.
//

import Foundation
import Factory
class FirstScreenRouter: ObservableObject {
    @Injected(\.appFlowState) var state: AppFlowState
    
    func secondRoute() {
        self.state.path.append(FirstScreenRoutes.second)
    }
}
