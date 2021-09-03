//
//  UISearchController+Extensions.swift
//  EventsAppIOS
//
//  Created by leandromac on 30/08/21.
//

import Foundation

import UIKit

extension UISearchController {
    
    static func defaultSearchController(searchBarDelegate: UISearchBarDelegate, textFieldDelegate: UITextFieldDelegate) -> UISearchController {
        
        let searchController = UISearchController()
        
        searchController.searchBar.sizeToFit()
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.hidesNavigationBarDuringPresentation = true
        searchController.searchBar.searchTextField.clearButtonMode = .never
        searchController.searchBar.returnKeyType = .done
        
        searchController.searchBar.delegate = searchBarDelegate
        searchController.searchBar.searchTextField.delegate = textFieldDelegate
        
        
        return searchController
    }
    
}
