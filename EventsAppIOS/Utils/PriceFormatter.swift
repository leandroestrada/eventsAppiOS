//
//  PriceFormatter.swift
//  EventsAppIOS
//
//  Created by leandromac on 01/09/21.
//

import Foundation

class PriceFormatter {
    
    public static func format(_ value: Double?) -> String {
        
        guard let value = value, value > 0 else {
            return "Grátis"
        }
        
        return "R$ \(value.formatted)"
    }
}
