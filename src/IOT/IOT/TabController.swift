//
//  TabController.swift
//  IOT
//
//  Created by rupendra on 2/28/17.
//  Copyright © 2017 Synechron. All rights reserved.
//

import UIKit

class TabController: UIViewController {
    @IBOutlet weak var temperatureContainerView: UIView!
    @IBOutlet weak var gpsContainerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.temperatureContainerView.isHidden = true
        self.gpsContainerView.isHidden = false
    }
    
}
