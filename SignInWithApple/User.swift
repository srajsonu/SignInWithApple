//
//  User.swift
//  SignInWithApple
//
//  Created by ARY@N on 29/09/19.
//  Copyright © 2019 Hitachi Payment Services. All rights reserved.
//

import UIKit
import AuthenticationServices

struct User {
    let id: String
    let firstName: String
    let lastName: String
    let email: String
    
    init(credentials: ASAuthorizationAppleIDCredential) {
        self.id = credentials.user
        self.firstName = credentials.fullName?.givenName ?? ""
        self.lastName = credentials.fullName?.familyName ?? ""
        self.email = credentials.email ?? ""
    }
}
extension User: CustomDebugStringConvertible {
    var debugDescription: String {
        return """
        ID: \(id)
        First Name: \(firstName)
        last Name: \(lastName)
        email: \(email)
    """
    }
}
