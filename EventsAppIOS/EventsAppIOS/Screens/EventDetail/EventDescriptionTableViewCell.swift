//
//  EventDescriptionTableViewCell.swift
//  EventsAppIOS
//
//  Created by leandromac on 05/09/21.
//

import UIKit

class EventDescriptionTableViewCell: UITableViewCell, EventDetailTableViewCell {

    // MARK: - Constants
    public static let identifier: String = "EventDescriptionTableViewCell"
    
    
    // MARK: - Outlets
    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Configuration
    func configure(with event: Event) {
        
        descriptionTextView.text = event.description
    }
}
