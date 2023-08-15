//
//  CryptoCoinAppApp.swift
//  CryptoCoinApp
//
//  Created by Rhys Julian-Jones on 8/12/23.
//

import SwiftUI

@main
struct CryptoCoinAppApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
