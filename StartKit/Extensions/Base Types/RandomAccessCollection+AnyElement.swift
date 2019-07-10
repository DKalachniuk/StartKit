//
//  RandomAccessCollection+AnyElement.swift
//  StartKit
//
//  Created by Dima Kalachniuk on 10/07/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import Foundation

extension RandomAccessCollection {
    func element(at index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
