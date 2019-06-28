//
//  UIView+GeometryTests.swift
//  StartKitTests
//
//  Created by Dima Kalachniuk on 28/06/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import XCTest
@testable import StartKit

class UIView_GeometryTests: XCTestCase {

    func testView_Origin_EqualsPoint1020() {
        let view = UIView(frame: CGRect(x: 10, y: 20, width: 30, height: 40))
        XCTAssertEqual(view.origin, CGPoint(x: 10, y: 20))
    }

    func testView_OriginX_Equals10() {
        let view = UIView(frame: CGRect(x: 10, y: 20, width: 30, height: 40))
        XCTAssertEqual(view.x, 10)
    }

    func testView_OriginY_Equals20() {
        let view = UIView(frame: CGRect(x: 10, y: 20, width: 30, height: 40))
        XCTAssertEqual(view.y, 20)
    }

    func testView_Size_EqualsSize3040() {
        let view = UIView(frame: CGRect(x: 10, y: 20, width: 30, height: 40))
        XCTAssertEqual(view.size, CGSize(width: 30, height: 40))
    }

    func testView_SizeWidth_Equals30() {
        let view = UIView(frame: CGRect(x: 10, y: 20, width: 30, height: 40))
        XCTAssertEqual(view.width, 30)
    }

    func testView_SizeHeight_Equals40() {
        let view = UIView(frame: CGRect(x: 10, y: 20, width: 30, height: 40))
        XCTAssertEqual(view.height, 40)
    }
}
