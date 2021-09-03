//
//  JSONDecoder+Extensionas.swift
//  EventsAppIOS
//
//  Created by leandromac on 03/09/21.
//

import Foundation

extension JSONDecoder {
    
    static var decoder: JSONDecoder {
        
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .millisecondsSince1970
        return decoder
    }
}
