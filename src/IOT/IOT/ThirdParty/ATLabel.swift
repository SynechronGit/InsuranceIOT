//
//  ATLabel.swift
//  IOT
//
//  Created by rupendra on 1/15/19.
//  Copyright © 2019 Synechron. All rights reserved.
//

import UIKit

class ATLabel: UILabel {
    var verticalTextAlignment :ATVerticalTextAlignment = ATVerticalTextAlignment.middle
    
    
    override func drawText(in rect: CGRect) {
        let aTargetRect = self.textRect(forBounds: rect, limitedToNumberOfLines: self.numberOfLines)
        super.drawText(in: aTargetRect)
    }
    
    
    override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines: Int) -> CGRect {
        var aReturnVal :CGRect = CGRect.zero
        
        let aTextRect = super.textRect(forBounds: bounds, limitedToNumberOfLines: limitedToNumberOfLines)
        
        if self.verticalTextAlignment == ATVerticalTextAlignment.top {
            aReturnVal = CGRect(x: aTextRect.origin.x, y: bounds.origin.y, width: aTextRect.size.width, height: aTextRect.size.height)
        } else if self.verticalTextAlignment == ATVerticalTextAlignment.middle {
            aReturnVal = CGRect(x: aTextRect.origin.x, y: bounds.origin.y + (bounds.size.height - aTextRect.size.height) / 2, width: aTextRect.size.width, height: aTextRect.size.height)
        } else if self.verticalTextAlignment == ATVerticalTextAlignment.bottom {
            aReturnVal = CGRect(x: aTextRect.origin.x, y: bounds.origin.y + (bounds.size.height - aTextRect.size.height), width: aTextRect.size.width, height: aTextRect.size.height)
        } else {
            aReturnVal = aTextRect
        }
        
        return aReturnVal
    }
}


public enum ATVerticalTextAlignment {
    case top
    case middle
    case bottom
}
