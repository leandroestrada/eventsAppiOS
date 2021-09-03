//
//  EventEndpoints.swift
//  EventsAppIOS
//
//  Created by leandromac on 03/09/21.
//

import Foundation
import Moya

enum EventEndpoints: TargetType {
    
    case getAll
    case get(id: Int)
    
    var path: String {
        
        switch self {
            
            case .getAll: return "/events"
            case .get(let id): return "/events/\(id)"
        }
    }
    
    var method: Moya.Method {
        
        switch self {
            
            case .getAll: return .get
            case .get: return .get
        }
    }
    
    var task: Task {
        
        switch self {
            
            case .getAll: return .requestPlain
            case .get: return .requestPlain
        }
    }
    
}
