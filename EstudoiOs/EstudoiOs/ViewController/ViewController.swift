//
//  ViewController.swift
//  EstudoiOs
//
//  Created by Thiago Evoá on 07/09/18.
//  Copyright © 2018 Thiago Evoá. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var schedule_tableview: UITableView!
    
    lazy var schedules: [Schedule] = []
    var schedule: Schedule?
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setToolbarHidden(false, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        schedule_tableview.dataSource = self
        schedule_tableview.delegate = self
        retrieveSchedules(params: [:])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return schedules.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = schedule_tableview.dequeueReusableCell(withIdentifier: "scheduleCell") as! ScheduleTableViewCell
        cell.label_datetime.text = schedules[indexPath.row].date
        cell.label_initial_time.text = schedules[indexPath.row].initialTime
        cell.label_final_time.text = schedules[indexPath.row].finalTime
        cell.label_professional_id.text = schedules[indexPath.row].professionalId
        cell.label_client_id.text = schedules[indexPath.row].clientId
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.schedule = self.schedules[indexPath.row]
        self.performSegue(withIdentifier: "FromSchedulesToSchedule", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ScheduleViewController{
            destination.receivedData = self.schedule
        }
    }
    
    private func retrieveSchedules(params: [String: String]){
        Alamofire.request("https://study-node-mongodb.herokuapp.com/api/schedule", method: .get, parameters: params).responseJSON{
            response in
            if response.result.isSuccess{
                let json = JSON(response.result.value!)
                for item in json{
                    let schedule = Schedule(_id: item.1["_id"].string!, date: item.1["date"].string!, initialTime: item.1["initialTime"].string!, finalTime: item.1["finalTime"].string!, clientId: item.1["clientId"].string!, professionalId: item.1["professionalId"].string!)
                    let newIndexPath = IndexPath(row: self.schedules.count, section: 0)
                    self.schedules.append(schedule)
                    self.schedule_tableview.insertRows(at: [newIndexPath], with: .automatic)
                }
            }else{
                print("Error: \(response.result.error!)")
            }
        }
    }
}

