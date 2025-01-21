//
//  Double+Extension.swift
//  E-Commerce-SwiftUI
//
//  Created by Anket Kohak on 21/01/25.
//

import Foundation

extension Double{
    
    func toString()-> String{
        return String(format: "%.1f", self)
    }
    
    func currencyFormat()-> String{
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
