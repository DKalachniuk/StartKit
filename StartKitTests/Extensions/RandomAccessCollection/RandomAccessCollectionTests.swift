//
//  RandomAccessCollectionTests.swift
//  StartKitTests
//
//  Created by Dima Kalachniuk on 10/07/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import XCTest
@testable import StartKit

class RandomAccessCollectionTests: XCTestCase {

    func testArray_Element_Index3EqualsNil() {
        let array = [1, 2, 3]
        XCTAssertNil(array.element(at: 3))
    }

    func testArray_Element_Index1Equals2() {
        let array = [1, 2, 3]
        XCTAssertEqual(array.element(at: 1), 2)
    }

}
