//
//  AuthVC.swift
//  Breakpoint
//
//  Created by Steven Santiago on 1/6/20.
//  Copyright © 2020 Steven Santiago. All rights reserved.
//

import UIKit
import Firebase

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if Auth.auth().currentUser != nil {
            performSegue(withIdentifier: "toMain", sender: nil)
        }
    }
    
    @IBAction func loginFacebook(_ sender: Any) {
    }
    
    @IBAction func loginGoogle(_ sender: Any) {
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
