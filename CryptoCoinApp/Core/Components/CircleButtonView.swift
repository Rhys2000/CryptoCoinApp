//
//  CircleButtonView.swift
//  CryptoCoinApp
//
//  Created by Rhys Julian-Jones on 8/12/23.
//

import SwiftUI

struct CircleButtonView: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(Circle())
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView()
    }
}
