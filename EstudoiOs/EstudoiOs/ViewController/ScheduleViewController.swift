//
//  ScheduleViewController.swift
//  EstudoiOs
//
//  Created by Thiago Evoá on 07/01/19.
//  Copyright © 2019 Thiago Evoá. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {
    var receivedData: Schedule?
    
    @IBOutlet weak var txt_date: UITextField!
    @IBOutlet weak var txt_initial_time: UITextField!
    @IBOutlet weak var txt_final_time: UITextField!
    @IBOutlet weak var txt_professional_id: UITextField!
    @IBOutlet weak var txt_client_id: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.txt_date.text = self.receivedData?.date
        self.txt_initial_time.text = self.receivedData?.initialTime
        self.txt_final_time.text = self.receivedData?.finalTime
        self.txt_professional_id.text = self.receivedData?.professionalId
        self.txt_client_id.text = self.receivedData?.clientId
    }
}
