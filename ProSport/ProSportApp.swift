//
//  ProSportApp.swift
//  ProSport
//
//  Created by Rio Sudarsono on 12/05/23.
//

import SwiftUI

@main
struct ProSportApp: App {
    
    @ObservedObject var viewModel = ContentVM()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
        }
    }
}
