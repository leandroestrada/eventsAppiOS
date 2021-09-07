//
//  Cupon.swift
//  EventsAppIOS
//
//  Created by leandromac on 05/09/21.
//

import Foundation

struct Cupon: Decodable {
    
    let id: String
    let eventId: String
    let discount: Double
}
