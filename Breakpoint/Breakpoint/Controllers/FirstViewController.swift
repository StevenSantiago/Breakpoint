//
//  FirstViewController.swift
//  Breakpoint
//
//  Created by Steven Santiago on 1/5/20.
//  Copyright © 2020 Steven Santiago. All rights reserved.
//

import UIKit
import Firebase

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser == nil {
                performSegue(withIdentifier: "toMain", sender: nil)
        }
    }
}

