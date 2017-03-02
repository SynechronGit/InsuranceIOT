//
//  DataAdapter.swift
//  IOT
//
//  Created by rupendra on 3/1/17.
//  Copyright © 2017 Synechron. All rights reserved.
//

import UIKit

class DataAdapter: NSObject {
    private static var _sharedInstance :DataAdapter = DataAdapter()
    static var sharedDataAdapter :DataAdapter {
        get {
            DataAdapter._sharedInstance = DataAdapter()
            return DataAdapter._sharedInstance
        }
    }
    
    
    func fetchTemperatureBasicInfoArray() -> Array<BasicInfoModel> {
        var aReturnVal = Array<BasicInfoModel>()
        
        var aBasicInfo = BasicInfoModel()
        aBasicInfo.title = "Name"
        aBasicInfo.value = "John Smith"
        aReturnVal.append(aBasicInfo)
        
        aBasicInfo = BasicInfoModel()
        aBasicInfo.title = "Address"
        aBasicInfo.value = "151 E Upper Wacker Dr, Chicago, IL 60601, USA"
        aReturnVal.append(aBasicInfo)
        
        aBasicInfo = BasicInfoModel()
        aBasicInfo.title = "Location info"
        aBasicInfo.value = "DataLake"
        aReturnVal.append(aBasicInfo)
        
        aBasicInfo = BasicInfoModel()
        aBasicInfo.title = "Phone"
        aBasicInfo.value = "+1 890.765.7211"
        aReturnVal.append(aBasicInfo)
        
        aBasicInfo = BasicInfoModel()
        aBasicInfo.title = "Email"
        aBasicInfo.value = "johnsmith@email.com"
        aReturnVal.append(aBasicInfo)
        
        return aReturnVal
    }
    
    
    func fetchTemperaturePolicyDetailsArray() -> Array<BasicInfoModel> {
        var aReturnVal = Array<BasicInfoModel>()
        
        var aBasicInfo = BasicInfoModel()
        aBasicInfo.title = "Policy #"
        aBasicInfo.value = "89478-05"
        aReturnVal.append(aBasicInfo)
        
        aBasicInfo = BasicInfoModel()
        aBasicInfo.title = "Premium"
        aBasicInfo.value = "$850.00"
        aReturnVal.append(aBasicInfo)
        
        aBasicInfo = BasicInfoModel()
        aBasicInfo.title = "Start date"
        aBasicInfo.value = "Oct 15, 2016"
        aReturnVal.append(aBasicInfo)
        
        aBasicInfo = BasicInfoModel()
        aBasicInfo.title = "End date"
        aBasicInfo.value = "Oct 14, 2017"
        aReturnVal.append(aBasicInfo)
        
        return aReturnVal
    }
    
    
    func fetchSensorEventArray() -> Array<SensorEvent> {
        var aReturnVal = Array<SensorEvent>()
        
        var aSensorEvent = SensorEvent()
        aSensorEvent.type = "Thermostats"
        aSensorEvent.date = "08-04-2016"
        aSensorEvent.alarmActivated = "15/S Street"
        aReturnVal.append(aSensorEvent)
        
        aSensorEvent = SensorEvent()
        aSensorEvent.type = "Water Sensors"
        aSensorEvent.date = "04-08-2016"
        aSensorEvent.alarmActivated = "15/S Street"
        aReturnVal.append(aSensorEvent)
        
        aSensorEvent = SensorEvent()
        aSensorEvent.type = "Smoke & Fire"
        aSensorEvent.date = "06-14-2016"
        aSensorEvent.alarmActivated = "15/S Street"
        aReturnVal.append(aSensorEvent)
        
        aSensorEvent = SensorEvent()
        aSensorEvent.type = "In-Home CCTV"
        aSensorEvent.date = "01-06-2016"
        aSensorEvent.alarmActivated = "15/S Street"
        aReturnVal.append(aSensorEvent)
        
        aSensorEvent = SensorEvent()
        aSensorEvent.type = "Air Quality"
        aSensorEvent.date = "03-25-2016"
        aSensorEvent.alarmActivated = "02"
        aReturnVal.append(aSensorEvent)
        
        return aReturnVal
    }
}
