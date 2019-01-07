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
    
    @IBOutlet weak var label_id: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label_id.text = self.receivedData?._id
    }
}
