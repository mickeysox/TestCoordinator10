//
//  ContentView.swift
//  TestCoordinator10
//
//  Created by Development on 02/05/2023.
//

import SwiftUI
import Factory

struct FirstScreen: View {
    @InjectedObject(\.firstRouter) var router: FirstScreenRouter
    
    
    @ViewBuilder private func content() -> some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button {
            self.router.secondRoute()
        } label: {
            Text("Phone Screen")
        }

    }
    
    var body: some View {
        FirstScreenCoordinator(content: self.content)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen()
    }
}
