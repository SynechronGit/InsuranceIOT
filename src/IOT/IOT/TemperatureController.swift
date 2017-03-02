//
//  TemperatureController.swift
//  IOT
//
//  Created by rupendra on 2/28/17.
//  Copyright © 2017 Synechron. All rights reserved.
//

import UIKit

class TemperatureController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var basicInfoArray :Array<BasicInfoModel> = DataAdapter.sharedDataAdapter.fetchTemperatureBasicInfoArray()
    var policyDetailsArray :Array<BasicInfoModel> = DataAdapter.sharedDataAdapter.fetchTemperaturePolicyDetailsArray()
    @IBOutlet weak var profileTableView: UITableView!
    
    var sensorEvents :Array<SensorEvent> = DataAdapter.sharedDataAdapter.fetchSensorEventArray()
    @IBOutlet weak var sensorEventTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.profileTableView.dataSource = self
        self.profileTableView.delegate = self
        self.sensorEventTableView.dataSource = self
        self.sensorEventTableView.delegate = self
    }
    
    
    func numberOfSections(in pTableView: UITableView) -> Int {
        var aReturnVal :Int = 0
        
        if pTableView.isEqual(self.profileTableView) {
            aReturnVal = 2
        } else {
            aReturnVal = 1
        }
        
        return aReturnVal
    }
    
    
    func tableView(_ pTableView: UITableView, numberOfRowsInSection pSection: Int) -> Int {
        var aReturnVal :Int = 0
        
        if pTableView.isEqual(self.profileTableView) {
            if pSection == 0 {
                aReturnVal = self.basicInfoArray.count
            } else {
                aReturnVal = self.policyDetailsArray.count
            }
        } else {
            aReturnVal = self.sensorEvents.count
        }
        
        return aReturnVal
    }
    
    
    func tableView(_ pTableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        var aReturnVal :CGFloat = 30.0
        
        if pTableView.isEqual(self.profileTableView) {
            aReturnVal = UITableViewAutomaticDimension
        } else {
            aReturnVal = 30.0
        }
        
        return aReturnVal
    }
    
    
    func tableView(_ pTableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var aReturnVal :CGFloat = 30.0
        
        if pTableView.isEqual(self.profileTableView) {
            aReturnVal = UITableViewAutomaticDimension
        } else {
            aReturnVal = 30.0
        }
        
        return aReturnVal
    }
    
    
    func tableView(_ pTableView: UITableView, cellForRowAt pIndexPath: IndexPath) -> UITableViewCell {
        var aReturnVal :UITableViewCell = UITableViewCell()
        
        if pTableView.isEqual(self.profileTableView) {
            var anInfo = self.basicInfoArray[pIndexPath.row]
            if pIndexPath.section == 0 {
                anInfo = self.basicInfoArray[pIndexPath.row]
            } else {
                anInfo = self.policyDetailsArray[pIndexPath.row]
            }
            let aTableCellView = pTableView.dequeueReusableCell(withIdentifier: "BasicInformationTableCellViewId") as! BasicInformationTableCellView
            aTableCellView.titleLabel.text = anInfo.title
            aTableCellView.valueLabel.text = anInfo.value
            aReturnVal = aTableCellView
        } else if pTableView.isEqual(self.sensorEventTableView) {
            let aSensorEvent = self.sensorEvents[pIndexPath.row]
            let aTableCellView = pTableView.dequeueReusableCell(withIdentifier: "SensorEventTableCellViewId") as! SensorEventTableCellView
            aTableCellView.typeLabel.text = aSensorEvent.type
            aTableCellView.dateLabel.text = aSensorEvent.date
            aTableCellView.alarmActivatedLabel.text = aSensorEvent.alarmActivated
            aReturnVal = aTableCellView
        }
        
        return aReturnVal
    }
    
    
    func tableView(_ pTableView: UITableView, titleForHeaderInSection pSection: Int) -> String? {
        var aReturnVal :String! = nil
        
        if pTableView.isEqual(self.profileTableView) {
            if pSection == 0 {
                aReturnVal = "Basic information"
            } else {
                aReturnVal = "Policy details"
            }
        } else if pTableView.isEqual(self.sensorEventTableView) {
            aReturnVal = nil
        }
        
        return aReturnVal
    }
    
    
    func tableView(_ pTableView: UITableView, willDisplayHeaderView pView: UIView, forSection section: Int){
        if pTableView == self.profileTableView {
            let aHeaderView = pView as! UITableViewHeaderFooterView
            aHeaderView.tintColor = self.profileTableView.backgroundColor
            aHeaderView.textLabel?.textColor = UIColor.white
            aHeaderView.textLabel?.font = UIFont.systemFont(ofSize: 14.0)
        }
    }
    
    
    func tableView(_ tableView: UITableView, viewForFooterInSection pSection: Int) -> UIView? {
        var aReturnVal :UIView!
        
        if tableView == self.profileTableView {
            aReturnVal = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 1))
            aReturnVal.backgroundColor = UIColor.clear
            
            let aLineView = UIView(frame: CGRect(x: 14, y: 0, width: aReturnVal.frame.size.width-28, height: aReturnVal.frame.size.height))
            aLineView.backgroundColor = UIColor(red: 159.0/255.0, green: 160.0/255.0, blue: 162.0/255.0, alpha: 1.0)
            if pSection == 1 {
                aLineView.backgroundColor = UIColor.clear
            }
            aReturnVal.addSubview(aLineView)
        } else if tableView == self.sensorEventTableView {
            aReturnVal = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 1.0))
            aReturnVal.backgroundColor = UIColor(red: 54.0/255.0, green: 84.0/255.0, blue: 103.0/255.0, alpha: 1.0)
        }
        
        return aReturnVal
    }
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1.0
    }
}
