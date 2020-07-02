//
//  LoginViewModel.swift
//  FireChat
//
//  Created by Stanley Traub on 7/1/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import Foundation

struct LoginViewModel {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false
            && password?.isEmpty == false
    }
}
