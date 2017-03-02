//
//  History.swift
//  IOT
//
//  Created by Markel on 02/03/17.
//  Copyright © 2017 Synechron. All rights reserved.
//

import UIKit

class History: NSObject {

    var violation: String!
    var location: String!
    var date: Date!
    
    var displayDateText: String! {
        
        get{
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "mm-dd-yyyy"
            return dateFormatter.string(from: date)
        }
    }
    
    static func arrayOfHistory() -> Array<History> {
        
        var aReturnVal = Array<History>()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "mm-dd-yyyy"
        
        let history1 = History()
        history1.date = dateFormatter.date(from: "04-08-2010")
        history1.violation = "Accelarating"
        history1.location = "15/S Street"
        aReturnVal.append(history1)
        
        let history2 = History()
        history2.date = dateFormatter.date(from: "04-08-2010")
        history2.violation = "Accelarating"
        history2.location = "15/S Street"
        aReturnVal.append(history2)

        let history3 = History()
        history3.date = dateFormatter.date(from: "04-08-2010")
        history3.violation = "Accelarating"
        history3.location = "15/S Street"
        aReturnVal.append(history3)

        let history4 = History()
        history4.date = dateFormatter.date(from: "04-08-2010")
        history4.violation = "Accelarating"
        history4.location = "15/S Street"
        aReturnVal.append(history4)
        
        return aReturnVal
        
    }
}
