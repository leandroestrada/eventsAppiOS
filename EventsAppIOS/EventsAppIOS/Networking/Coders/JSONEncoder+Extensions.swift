//
//  JSONEncoder+Extensions.swift
//  EventsAppIOS
//
//  Created by leandromac on 03/09/21.
//

import Foundation

extension JSONEncoder {
    
    static var encoder: JSONEncoder {
        
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .millisecondsSince1970
        return encoder
    }
}

