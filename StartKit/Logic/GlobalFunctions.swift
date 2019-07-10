//
//  GlobalFunctions.swift
//  StartKit
//
//  Created by Dima Kalachniuk on 28/06/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import Foundation
import AudioToolbox

// vibrate
public func vibrate(){
    AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
}

//hideAllKeyboards
public func hideAllKeyboards(){
    UIApplication.shared.sendAction(#selector(UIApplication.resignFirstResponder), to: nil, from: nil, for: nil)
}
