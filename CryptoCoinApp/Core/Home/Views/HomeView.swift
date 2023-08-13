//
//  HomeView.swift
//  CryptoCoinApp
//
//  Created by Rhys Julian-Jones on 8/12/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            // Background layer
            Color.theme.background
                .ignoresSafeArea()
            
            //Content layer
            VStack {
                Text("Header")
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomeView()
                .navigationBarHidden(true)
        }
    }
}
