//
//  BasicInformationTableCellView.swift
//  IOT
//
//  Created by rupendra on 3/1/17.
//  Copyright © 2017 Synechron. All rights reserved.
//

import UIKit
import ATKit


class BasicInformationTableCellView: UITableViewCell {
    @IBOutlet weak var titleLabel: ATLabel!
    @IBOutlet weak var valueLabel: ATLabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.titleLabel.verticalTextAlignment = ATVerticalTextAlignment.top
        self.valueLabel.verticalTextAlignment = ATVerticalTextAlignment.top
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
