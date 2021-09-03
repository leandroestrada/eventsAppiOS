//
//  Date+Extensions.swift
//  EventsAppIOS
//
//  Created by leandromac on 30/08/21.
//

import Foundation

extension Date {
    
    var formattedString: String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        
        return formatter.string(from: self)
    }
    
    
}
