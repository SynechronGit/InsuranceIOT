//
//  BasicInformationTableCellView.swift
//  IOT
//
//  Created by rupendra on 3/1/17.
//  Copyright © 2017 Synechron. All rights reserved.
//

import UIKit

class BasicInformationTableCellView: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
