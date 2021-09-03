//
//  CheckinModels.swift
//  EventsAppIOS
//
//  Created by leandromac on 03/09/21.
//

import Foundation

struct CheckinInput: Encodable {
    
    let eventId: Int
    let name: String
    let email: String
}

struct CheckinResponse: Decodable {
    let code: String
}
