//
//  EventDetailViewModel.swift
//  EventsAppIOS
//
//  Created by leandromac on 05/09/21.
//

import Foundation

protocol EventDetailViewModelDelegate: class {

}

class EventDetailViewModel {
    
    // MARK: - Attributes
    weak var delegate: EventDetailViewModelDelegate?
    var event: Event?
    
    
    // MARK: - Computed Attributes
    var shouldDisplayParticipants: Bool {
        guard let event = event else { return false }
        return !event.people.isEmpty
    }
    
    var displayedInformation: [EventDetailCellType] {
        if shouldDisplayParticipants {
            return [.image, .details, .address, .participants, .description]
        } else {
            return [.image, .details, .address, .description]
        }
    }
    
    
    // MARK: - Public Methods
    public func seeMap() {
        guard let event = event else { return }
        Geocoding.openMap(event.latitude, event.longitude, pinName: event.title)
    }
}
