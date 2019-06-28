//
//  UIScreen+Geometry.swift
//  StartKit
//
//  Created by Dima Kalachniuk on 28/06/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import Foundation

public extension UIScreen{

    //MARK:- Size

    static var width: CGFloat {
        return UIScreen.main.bounds.size.width
    }

    static var height: CGFloat {
        return UIScreen.main.bounds.size.height
    }
}
