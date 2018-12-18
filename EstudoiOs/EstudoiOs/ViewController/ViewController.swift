//
//  ViewController.swift
//  EstudoiOs
//
//  Created by Thiago Evoá on 07/09/18.
//  Copyright © 2018 Thiago Evoá. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBAction func btnLogin(_ sender: Any) {
        saveToken(token: "SADIUH127863")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

