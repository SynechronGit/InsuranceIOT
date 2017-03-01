//
//  BasicInfoModel.swift
//  IOT
//
//  Created by Markel on 01/03/17.
//  Copyright © 2017 Synechron. All rights reserved.
//

import UIKit

class BasicInfoModel: NSObject {

    var title: String!
    var value: String!
    
    static func arrayOfBasicInfo() -> Array<BasicInfoModel> {
        
        var aReturnVal = Array<BasicInfoModel>()
        
        let info1 = BasicInfoModel()
        info1.title = "Driving License #"
        info1.value = "F 87 634 834"
        aReturnVal.append(info1)
        
        let info2 = BasicInfoModel()
        info2.title = "Appointed Since"
        info2.value = "April 01, 2007"
        aReturnVal.append(info2)
        
        let info3 = BasicInfoModel()
        info3.title = "Driving Experience"
        info3.value = "12 Years"
        aReturnVal.append(info3)
        
        let info4 = BasicInfoModel()
        info4.title = "Employee Type"
        info4.value = "Part time"
        aReturnVal.append(info4)
        
        return aReturnVal
    }
    
    static func arrayOfContactDetails() -> Array<BasicInfoModel> {
        
        var aReturnVal = Array<BasicInfoModel>()
        
        let info1 = BasicInfoModel()
        info1.title = "Phone Number"
        info1.value = "(514)754-3100"
        aReturnVal.append(info1)
        
        let info2 = BasicInfoModel()
        info2.title = "Street Address"
        info2.value = "2046, West street"
        aReturnVal.append(info2)
        
        let info3 = BasicInfoModel()
        info3.title = "City"
        info3.value = "Maimai"
        aReturnVal.append(info3)
        
        let info4 = BasicInfoModel()
        info4.title = "Zip"
        info4.value = "33172"
        aReturnVal.append(info4)
        
        return aReturnVal
    }
    
    static func arrayOfPolicyDetails() -> Array<BasicInfoModel> {
        
        var aReturnVal = Array<BasicInfoModel>()
        
        let info1 = BasicInfoModel()
        info1.title = "Policy #:"
        info1.value = "89478-03"
        aReturnVal.append(info1)
        
        let info2 = BasicInfoModel()
        info2.title = "Premium:"
        info2.value = "$850.00"
        aReturnVal.append(info2)
        
        let info3 = BasicInfoModel()
        info3.title = "Start date:"
        info3.value = "Oct 15, 2016"
        aReturnVal.append(info3)
        
        let info4 = BasicInfoModel()
        info4.title = "End date:"
        info4.value = "Oct 14, 2017"
        aReturnVal.append(info4)
        
        return aReturnVal
    }
}

