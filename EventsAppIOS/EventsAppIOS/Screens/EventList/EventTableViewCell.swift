//
//  EventTableViewCell.swift
//  EventsAppIOS
//
//  Created by leandromac on 04/09/21.
//

import Foundation

class EventTableViewCell: UITableViewCell {
    
    // MARK: - Constants
    public static let identifier: String = "EventTableViewCell"
    
    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var imageImageView: UIImageView!
    

    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        appearSmoothly()
    }

    // MARK: - Configuration
    func appearSmoothly() {
        
        contentView.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            self.contentView.alpha = 1
        }
    }
    
    func configure(with event: Event) {
        
        titleLabel.text = event.title
        dateLabel.text = event.date.formattedString
        descriptionLabel.text = event.description
        priceLabel.text = PriceFormatter.format(event.price)
        imageImageView.setImage(from: event.image, withActivityIndicator: false, withFade: true, fadeDuration: .Normal)
        imageImageView.layer.cornerRadius = 8

    }
}
