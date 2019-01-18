//
//  LoginViewController.swift
//  EstudoiOs
//
//  Created by Thiago Evoá on 31/12/18.
//  Copyright © 2018 Thiago Evoá. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBAction func btn_login(_ sender: Any) {
//        saveToken(token: "SADIUH127863")
        self.performSegue(withIdentifier: "FromLoginToMain", sender: self)
    }
    @IBAction func btn_recover_password(_ sender: Any) {
    }
    @IBAction func btn_create_account(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
