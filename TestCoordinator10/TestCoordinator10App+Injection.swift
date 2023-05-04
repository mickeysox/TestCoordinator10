//
//  TestCoordinator10App+Injection.swift
//  TestCoordinator10
//
//  Created by Development on 02/05/2023.
//

import Foundation
import Factory

extension Container {
    
    var appFlowState: Factory<AppFlowState> {
        self { AppFlowState() }.singleton
    }
    
    var firstRouter: Factory<FirstScreenRouter> {
        self { FirstScreenRouter() }.singleton
    }
}

