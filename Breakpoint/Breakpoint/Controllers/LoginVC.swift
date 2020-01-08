//
//  LoginVC.swift
//  Breakpoint
//
//  Created by Steven Santiago on 1/6/20.
//  Copyright © 2020 Steven Santiago. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {
    @IBOutlet weak var emailTextField: InsetTextField!
    @IBOutlet weak var passwordTextField: InsetTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signInPressed(_ sender: Any) {
        if let emailText = emailTextField.text , let passwordText = passwordTextField.text {
            AuthService.instance.loginUser(withEmail: emailText, andPassword: passwordText) { [weak self] (result) in
                switch result {
                case .success( _):
                    self?.performSegue(withIdentifier: "loginToMain", sender: nil)
                    print("Success")
                    
                case .failure(let error):
                    print("Failure:", error)
                }
            }
            
            AuthService.instance.registerUser(withEmail: emailText, andPassword: passwordText) { [weak self] (result)  in
                switch result {
                case .success( _):
                    AuthService.instance.loginUser(withEmail: emailText, andPassword: passwordText) { [weak self] (result) in
                        switch result {
                        case .success( _):
                            //self?.performSegue(withIdentifier: "loginToMain", sender: nil)
                            print("Success")
                            
                        case .failure(let error):
                            print("Failure:", error)
                            return
                        }
                    }
                    self?.performSegue(withIdentifier: "loginToMain", sender: nil)
                    print("Success")
                case .failure(let error):
                    print("Failure:", error)
                }
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LoginVC: UITextFieldDelegate {
    
}
