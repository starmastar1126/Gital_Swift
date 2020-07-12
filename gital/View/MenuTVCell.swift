//
//  MenuTVCell.swift
//  gital
//
//  Created by Dan Jin on 7/9/20.
//  Copyright © 2020 Dan Jin. All rights reserved.
//

import UIKit

class MenuTVCell: UITableViewCell {

    @IBOutlet weak var menuIconView: UIImageView!
    @IBOutlet weak var menuTitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
