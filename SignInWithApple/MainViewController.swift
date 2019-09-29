//
//  MainViewController.swift
//  SignInWithApple
//
//  Created by ARY@N on 29/09/19.
//  Copyright © 2019 Hitachi Payment Services. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var user: User?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = user?.debugDescription ?? ""
    }
   

}
