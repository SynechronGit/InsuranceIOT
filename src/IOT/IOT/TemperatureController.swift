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
    
    
    func tableView(_ pTableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var aReturnVal :Int = 0
        
        if pTableView.isEqual(self.profileTableView) {
            aReturnVal = self.basicInfoArray.count
        } else {
            aReturnVal = self.sensorEvents.count
        }
        
        return aReturnVal
    }
    
    
    func tableView(_ pTableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var aReturnVal :CGFloat = 30.0
        
        if pTableView.isEqual(self.profileTableView) {
            aReturnVal = 30.0
        } else {
            aReturnVal = 30.0
        }
        
        return aReturnVal
    }
    
    
    func tableView(_ pTableView: UITableView, cellForRowAt pIndexPath: IndexPath) -> UITableViewCell {
        var aReturnVal :UITableViewCell = UITableViewCell()
        
        if pTableView.isEqual(self.profileTableView) {
            let anInfo = self.basicInfoArray[pIndexPath.row]
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
    
}
