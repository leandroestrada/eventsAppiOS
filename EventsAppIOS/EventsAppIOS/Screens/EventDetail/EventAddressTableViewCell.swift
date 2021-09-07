//
//  EventAddressTableViewCell.swift
//  EventsAppIOS
//
//  Created by leandromac on 05/09/21.
//

import UIKit

class EventAddressTableViewCell: UITableViewCell, EventDetailTableViewCell {

    // MARK: - Constants
    public static let identifier: String = "EventAddressTableViewCell"
    
    
    // MARK: - Outlets
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Configuration
    func configure(with event: Event) {
        
        addressLabel.alpha = 0
        self.activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
        Geocoding.getPlace(event.latitude, event.longitude) {
            (place) in
            
            self.addressLabel.text = place?.formattedAddress ?? "Localidade não encontrada"
            self.activityIndicator.isHidden = true
            
            UIView.animate(withDuration: 0.5) {
                self.addressLabel.alpha = 1
            }
        }
    }
}
