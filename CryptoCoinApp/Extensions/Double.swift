//
//  Double.swift
//  CryptoCoinApp
//
//  Created by Rhys Julian-Jones on 8/14/23.
//

import Foundation

extension Double {
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        //formatter.locale = .current
        //formatter.currencyCode = "usd"
        //formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func currencyAsAString() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter.string(from: number) ?? "$0.00"
    }
    
    func numberAsAString() -> String {
        return String(format: "%.2f", self)
    }
    
    func percentageAsAString() -> String {
        return numberAsAString() + "%"
    }
}
