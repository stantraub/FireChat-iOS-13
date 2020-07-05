//
//  Service.swift
//  FireChat
//
//  Created by Stanley Traub on 7/4/20.
//  Copyright © 2020 Stanley Traub. All rights reserved.
//

import Foundation
import Firebase

struct Service {
    static func fetchUsers(completion: @escaping([User]) -> Void) {
        var users = [User]()
        Firestore.firestore().collection("users").getDocuments { snapshot, error in
            snapshot?.documents.forEach({ document in
                let dictionary = document.data()
                let user = User(dictionary: dictionary)
                users.append(user)
                completion(users)
            })
        }
    }
}
