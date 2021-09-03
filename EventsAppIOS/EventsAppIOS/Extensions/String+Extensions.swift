//
//  String+Extensions.swift
//  EventsAppIOS
//
//  Created by leandromac on 30/08/21.
//

import Foundation

extension String {
    
    static let empty = ""
    
    func containsIgnoringCase(_ substring: String) -> Bool {
        return self.lowercased().contains(substring.lowercased())
    }
}
