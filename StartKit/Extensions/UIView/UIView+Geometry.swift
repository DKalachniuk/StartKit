//
//  UIView.swift
//  StartKit
//
//  Created by Dima Kalachniuk on 28/06/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import UIKit

public extension UIView{

    //MARK:- Size

    var width: CGFloat {
        get { return size.width }
        set {
            var bounds = self.bounds
            bounds.size.width = newValue
            self.bounds = bounds
        }
    }

    var height: CGFloat {
        get { return size.height }
        set {
            var bounds = self.bounds
            bounds.size.height = newValue
            self.bounds = bounds
        }
    }

    var size: CGSize {
        get {
            return bounds.size
        }
        set {
            var bounds = self.bounds
            bounds.size = newValue
            self.bounds = bounds
        }
    }

    //MARK:- Origin

    var x: CGFloat {
        get { return origin.x }
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
    }

    var y: CGFloat {
        get { return origin.y }
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
    }

    var origin: CGPoint {
        get {
            return frame.origin
        }
        set {
            var frame = self.frame
            frame.origin = newValue
            self.frame = frame
        }
    }
}

