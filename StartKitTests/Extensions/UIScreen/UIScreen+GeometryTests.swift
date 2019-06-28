//
//  UIScreen+Geometry.swift
//  StartKitTests
//
//  Created by Dima Kalachniuk on 28/06/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import XCTest

class UIScreen_Geometry: XCTestCase {

    func testScreen_Width_EqualsUIScreeMainWidth() {
        XCTAssertEqual(UIScreen.width, UIScreen.main.bounds.width)
    }

    func testScreen_Height_EqualsUIScreeMainWidth() {
        XCTAssertEqual(UIScreen.height, UIScreen.main.bounds.height)
    }
}
