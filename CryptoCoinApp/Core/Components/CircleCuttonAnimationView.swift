//
//  CircleCuttonAnimationView.swift
//  CryptoCoinApp
//
//  Created by Rhys Julian-Jones on 8/14/23.
//

import SwiftUI

struct CircleCuttonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .animation(animate ? .easeOut(duration: 0.8) : .none, value: animate)
    }
}

struct CircleCuttonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleCuttonAnimationView(animate: .constant(false))
    }
}
