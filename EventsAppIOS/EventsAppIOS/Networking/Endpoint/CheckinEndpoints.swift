//
//  CheckinEndpoints.swift
//  EventsAppIOS
//
//  Created by leandromac on 03/09/21.
//

import Foundation
import Moya

enum CheckinEndpoints: TargetType {
    
    case checkin(input: CheckinInput)
    
    var path: String {
        switch self {
            case .checkin: return "/checkin"
        }
    }
    
    var method: Moya.Method {
        switch self {
            case .checkin: return .post
        }
    }
    
    var task: Task {
        switch self {
            case .checkin(let input): return .requestJSONEncodable(input)
        }
    }
    
}
