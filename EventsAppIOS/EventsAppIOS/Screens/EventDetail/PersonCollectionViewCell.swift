//
//  PersonCollectionViewCell.swift
//  EventsAppIOS
//
//  Created by leandromac on 05/09/21.
//

import UIKit

class PersonCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Constants
    public static let identifier: String = "PersonCollectionViewCell"
    
    // MARK: - Outlets
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: - Configuration
    public func configure(with person: Person) {
        self.avatarImageView.setImage(from: person.picture)
        self.nameLabel.text = person.name
    }
}
