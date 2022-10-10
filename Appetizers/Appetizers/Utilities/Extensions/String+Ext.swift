//
//  String+Ext.swift
//  Appetizers
//
//  Created by Thiago Oliveira on 10/10/22.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailFormat     = "[A-Z0-9a-z._%+-]+@([A-Z0-9a-z.-]+\\.[A-Za-z]{2,64}|[A-Za-z]{2,64})"
        let emailPredicate  = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
