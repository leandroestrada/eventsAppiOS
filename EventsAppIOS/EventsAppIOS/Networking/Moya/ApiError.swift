//
//  ApiError.swift
//  EventsAppIOS
//
//  Created by leandromac on 03/09/21.
//

import Foundation

struct ApiError: LocalizedError, Decodable {
    
    let message: String
    
    init(status: Int, message: String) {
        self.message = message
    }
    
    public var errorDescription: String? {
        return message
    }
    
}
