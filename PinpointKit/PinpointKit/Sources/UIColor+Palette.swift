//
//  UIColor+Palette.swift
//  PinpointKit
//
//  Created by Matthew Bischoff on 2/19/16.
//  Copyright © 2016 Lickability. All rights reserved.
//

import UIKit

/// Extends UIColor to add the Pinpoint specific colors.
public extension UIColor {
    
    /**
     The signature Pinpoint orange color.
     
     - returns: The Pinpoint specific orange color.
     */
    static func pinpointOrangeColor() -> UIColor {
        return UIColor(red: 1, green: 0.2196, blue: 0.0392, alpha: 1)
    }
}
