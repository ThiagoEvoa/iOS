//
//  ViewController.swift
//  EstudoiOs
//
//  Created by Thiago Evoá on 07/09/18.
//  Copyright © 2018 Thiago Evoá. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var schedule_tableview: UITableView!
    
    let schedule1 = Schedule(_id: "1", date: "1", initialTime: "1", finalTime: "1", clientId: "1", professionalId: "1")
    lazy var schedules = [schedule1]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return schedules.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = schedule_tableview.dequeueReusableCell(withIdentifier: "scheduleCell") as! ScheduleTableViewCell
        
        cell.txt_schedule_id.text = schedules[indexPath.row]._id
        
        return cell
    }
}

