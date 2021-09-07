//
//  EventImageTableViewCell.swift
//  EventsAppIOS
//
//  Created by leandromac on 05/09/21.
//

import UIKit

class EventImageTableViewCell: UITableViewCell, EventDetailTableViewCell {

    // MARK: - Constants
    public static let identifier: String = "EventImageTableViewCell"
    
    
    // MARK: - Outlets
    @IBOutlet weak var imageImageView: UIImageView!
    
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Configuration
    func configure(with event: Event) {
        imageImageView.setImage(from: event.image, withActivityIndicator: false, withFade: true, fadeDuration: .Normal)
    }
}
