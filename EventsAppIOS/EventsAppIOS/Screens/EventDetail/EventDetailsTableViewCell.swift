//
//  EventDetailsTableViewCell.swift
//  EventsAppIOS
//
//  Created by leandromac on 05/09/21.
//

import UIKit

class EventDetailsTableViewCell: UITableViewCell, EventDetailTableViewCell {

    // MARK: - Constants
    public static let identifier: String = "EventDetailsTableViewCell"
    
    
    // MARK: - Outlets
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Configuration
    func configure(with event: Event) {
        
        dateLabel.text = event.date.formattedString
        titleLabel.text = event.title
        priceLabel.text = PriceFormatter.format(event.price)
    }
}
