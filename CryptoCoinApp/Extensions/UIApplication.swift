//
//  UIApplication.swift
//  CryptoCoinApp
//
//  Created by Rhys Julian-Jones on 8/15/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
