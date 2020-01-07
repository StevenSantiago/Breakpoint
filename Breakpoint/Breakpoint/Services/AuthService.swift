//
//  AuthService.swift
//  Breakpoint
//
//  Created by Steven Santiago on 1/6/20.
//  Copyright © 2020 Steven Santiago. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    
    static let instance = AuthService()
    
    func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping (Result<Bool,Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            
            guard let result = result else {
                userCreationComplete(.failure(error!))
                return
            }
            let userData = ["provider": result.user.providerID, "email": result.user.email]
            
            DataService.instance.createDBUser(uid: result.user.uid, userData: userData as Dictionary<String, Any>)
            userCreationComplete(.success(true))
        }
    }
    
    func loginUser(withEmail email: String, andPassword password: String, loginComplete: @escaping (Result<Bool,Error>) -> Void) {
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            
            if let error = error {
                loginComplete(.failure(error))
            } else {
                loginComplete(.success(true))
            }
            
        }
    }
    
}
