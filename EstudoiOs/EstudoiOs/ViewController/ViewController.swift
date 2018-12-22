//
//  ViewController.swift
//  EstudoiOs
//
//  Created by Thiago Evoá on 07/09/18.
//  Copyright © 2018 Thiago Evoá. All rights reserved.
//

import UIKit

class ViewController: UITableViewCell {
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBAction func btn_login(_ sender: Any) {
        saveToken(token: "SADIUH127863")
    }
    @IBAction func btn_recover_password(_ sender: Any) {
    }
    @IBAction func btn_create_account(_ sender: Any) {
    }
    @IBOutlet weak var txt_schedule_id: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

