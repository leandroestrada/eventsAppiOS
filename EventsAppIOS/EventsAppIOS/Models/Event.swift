//
//  Event.swift
//  EventsAppIOS
//
//  Created by leandromac on 30/08/21.
//

import Foundation

struct Event: Decodable {
    let id: String
    let people: [Person]
    let date: Date
    let description: String
    let image: String
    let longitude: Double
    let latitude: Double
    let price: Double
    let title: String
    let cupons: [Cupon]?
}
