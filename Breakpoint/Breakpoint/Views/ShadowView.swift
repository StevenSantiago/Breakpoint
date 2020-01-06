//
//  ShadowView.swift
//  Breakpoint
//
//  Created by Steven Santiago on 1/6/20.
//  Copyright © 2020 Steven Santiago. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override func awakeFromNib() {
        self.setUpView()
        super.awakeFromNib()
    }
    
     func setUpView() {
           self.layer.shadowOpacity = 0.75
           self.layer.shadowRadius = 5
           self.layer.shadowColor = UIColor.black.cgColor
       }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
