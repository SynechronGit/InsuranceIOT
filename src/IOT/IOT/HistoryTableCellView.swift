//
//  HistoryTableCellView.swift
//  IOT
//
//  Created by Markel on 02/03/17.
//  Copyright © 2017 Synechron. All rights reserved.
//

import UIKit

class HistoryTableCellView: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var violationLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
