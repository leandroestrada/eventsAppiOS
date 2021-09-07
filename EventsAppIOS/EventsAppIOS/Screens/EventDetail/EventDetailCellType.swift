//
//  EventDetailCellType.swift
//  EventsAppIOS
//
//  Created by leandromac on 06/09/21.
//

import Foundation

enum EventDetailCellType {
    
    case image
    case details
    case address
    case description
    case participants
    
    var identifier: String {
        switch self {
        case .image: return EventImageTableViewCell.identifier
        case .details: return EventDetailsTableViewCell.identifier
        case .address: return EventAddressTableViewCell.identifier
        case .participants: return EventParticipantsTableViewCell.identifier
        case .description: return EventDescriptionTableViewCell.identifier
        }
    }
    
    var height: CGFloat {
        switch self {
        case .image: return 200
        case .details: return 180
        case .address: return 100
        case .participants: return 200
        case .description: return 185
        }
    }
}

protocol EventDetailTableViewCell: UITableViewCell {
    
    // MARK: - Configuration
    func configure(with event: Event)
}
