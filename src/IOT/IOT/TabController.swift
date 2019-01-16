//
//  TabController.swift
//  IOT
//
//  Created by rupendra on 2/28/17.
//  Copyright © 2017 Synechron. All rights reserved.
//

import UIKit


class TabController: UIViewController, ATDrawerDelegate {
    @IBOutlet weak var temperatureContainerView: UIView!
    @IBOutlet weak var gpsContainerView: UIView!
    
    @IBOutlet weak var onlineStatusImageView: UIImageView!
    @IBOutlet weak var onlineStatusLabel: UILabel!
    
    
    var currentTabIndex :Int {
        get {
            var aReturnVal :Int = 0
            
            if self.temperatureContainerView.isHidden == false {
                aReturnVal = 0
            } else if self.gpsContainerView.isHidden == false {
                aReturnVal = 1
            }
            
            return aReturnVal
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.displayTabAtIndex(0)
        self.displayOnlineStatus(false)
    }
    
    
    func displayTabAtIndex(_ pIndex :Int) {
        if pIndex == 0 {
            self.temperatureContainerView.isHidden = false
            self.gpsContainerView.isHidden = true
        } else {
            self.temperatureContainerView.isHidden = true
            self.gpsContainerView.isHidden = false
        }
    }
    
    
    func displayTemperatureTab() {
        self.displayTabAtIndex(0)
    }
    
    
    func displayGpsTab() {
        self.displayTabAtIndex(1)
    }
    
    
    func displayOnlineStatus(_ pIsOnline :Bool) {
        if pIsOnline {
            self.onlineStatusLabel.text = "Online"
            self.onlineStatusLabel.textColor = UIColor(red: 48.0/255.0, green: 150.0/255.0, blue: 19.0/255.0, alpha: 1.0)
            self.onlineStatusImageView.image = UIImage(named: "OnlineIcon")
        } else {
            self.onlineStatusLabel.text = "Offline"
            self.onlineStatusLabel.textColor = UIColor(red: 140.0/255.0, green: 140.0/255.0, blue: 140.0/255.0, alpha: 1.0)
            self.onlineStatusImageView.image = UIImage(named: "OfflineIcon")
        }
    }
    
    
    @IBAction func didSelectIotButton(_ pSender: UIButton) {
        ATDrawer.sharedInstance.drawerOptions = ["Temperature", "GPS"]
        ATDrawer.sharedInstance.delegate = self
        ATDrawer.sharedInstance.selectedDrawerOptionIndex = self.currentTabIndex
        ATDrawer.sharedInstance.slideDirection = ATDrawerSlideDirection.leftToRight
        ATDrawer.sharedInstance.show()
    }
    
    
    func atDrawer(_ pSender: ATDrawer, didSelectOptionAtIndex pIndex: Int) {
        if pIndex == 0 {
            self.displayTemperatureTab()
        } else if pIndex == 1 {
            self.displayGpsTab()
        }
    }
    
}
