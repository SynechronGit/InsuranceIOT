//
//  BasicInfoTableCellView.swift
//  IOT
//
//  Created by Markel on 28/02/17.
//  Copyright © 2017 Synechron. All rights reserved.
//

import UIKit

class BasicInfoTableCellView: UITableViewCell {

    @IBOutlet weak var titleDisplayLabel: UILabel!
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
