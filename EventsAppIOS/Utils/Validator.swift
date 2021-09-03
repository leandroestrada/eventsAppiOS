//
//  Validator.swift
//  EventsAppIOS
//
//  Created by leandromac on 01/09/21.
//

import Foundation

class Validator {
    
    public static func validateEmail(_ email: String) -> Bool {
        
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailPred.evaluate(with: email)
    }
}
