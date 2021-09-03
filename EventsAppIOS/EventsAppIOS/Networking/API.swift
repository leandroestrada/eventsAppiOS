//
//  API.swift
//  EventsAppIOS
//
//  Created by leandromac on 01/09/21.
//

import Foundation

enum API {
    
    static var currentScheme: API = .development
    
    case development
    
    var url: String {
        
        switch self {
            case .development: return "http://5f5a8f24d44d640016169133.mockapi.io/api"
        }
    }
}
