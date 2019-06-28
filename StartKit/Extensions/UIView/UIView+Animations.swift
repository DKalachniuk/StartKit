//
//  UIView+Animations.swift
//  StartKit
//
//  Created by Dima Kalachniuk on 28/06/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import UIKit

public extension UIView {

    /**
     Calls layoutIfNeeded function inside of UIView.animate block

     - Parameter duration: duration of the animation.
     - Parameter animations: additional animations if needed.
     - Parameter completion: completion handler when animation is finished.
     */
    func animateLayout(duration: TimeInterval = 0.25,
                       animations: (() -> Void)? = nil,
                       completion: ((Bool) -> Void)? = nil) {
        UIView.animate(withDuration: duration, animations: {
            animations?()
            self.layoutIfNeeded()
        }, completion: completion)
    }
}

