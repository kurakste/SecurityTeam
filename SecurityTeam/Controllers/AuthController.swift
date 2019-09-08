//
//  AuthController.swift
//  SecurityTeam
//
//  Created by Evgeniy Suprun on 9/6/19.
//  Copyright © 2019 Evgeniy Suprun. All rights reserved.
//

import UIKit

class AuthController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    

    @IBAction func backBarButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
