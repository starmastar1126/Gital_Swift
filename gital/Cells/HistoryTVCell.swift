//
//  HistoryTVCell.swift
//  gital
//
//  Created by xiao long on 2020/7/9.
//  Copyright © 2020 Dan Jin. All rights reserved.
//

import UIKit

class HistoryTVCell: UITableViewCell {

    @IBOutlet weak var chkBox: CheckBox!
    @IBOutlet weak var weekdayLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var injectionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
