//
//  ScheduleTableViewCell.swift
//  EstudoiOs
//
//  Created by Thiago Evoá on 31/12/18.
//  Copyright © 2018 Thiago Evoá. All rights reserved.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {
    @IBOutlet weak var label_datetime: UILabel!
    @IBOutlet weak var label_initial_time: UILabel!
    @IBOutlet weak var label_final_time: UILabel!
    @IBOutlet weak var label_professional_id: UILabel!
    @IBOutlet weak var label_client_id: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
