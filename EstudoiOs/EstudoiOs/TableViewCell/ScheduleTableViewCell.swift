//
//  ScheduleTableViewCell.swift
//  EstudoiOs
//
//  Created by Thiago Evoá on 31/12/18.
//  Copyright © 2018 Thiago Evoá. All rights reserved.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {
    @IBOutlet weak var txt_schedule_id: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
