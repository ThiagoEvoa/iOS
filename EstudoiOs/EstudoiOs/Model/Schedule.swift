//
//  Schedule.swift
//  EstudoiOs
//
//  Created by Thiago Evoá on 19/12/18.
//  Copyright © 2018 Thiago Evoá. All rights reserved.
//

import Foundation

class Schedule {
    var _id: String
    var date: String
    var initialTime: String
    var finalTime: String
    var clientId: String
    var professionalId: String
    
    init(_id: String, date: String, initialTime: String, finalTime: String, clientId: String, professionalId: String){
        self._id = _id
        self.date = date
        self.initialTime = initialTime
        self.finalTime = finalTime
        self.clientId = clientId
        self.professionalId = professionalId
    }
}
