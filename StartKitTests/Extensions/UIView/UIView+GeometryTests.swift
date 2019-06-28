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

    func testView_SetOrigin_EqualsPoint5060() {
        let view = UIView(frame: CGRect(x: 10, y: 20, width: 30, height: 40))
        XCTAssertEqual(view.origin, CGPoint(x: 10, y: 20))
        view.origin = CGPoint(x: 50, y: 60)
        XCTAssertEqual(view.origin, CGPoint(x: 50, y: 60))
    }

    func testView_SetOriginX_Equals30() {
        let view = UIView(frame: CGRect(x: 10, y: 20, width: 30, height: 40))
        XCTAssertEqual(view.x, 10)
        view.x = 30
        XCTAssertEqual(view.x, 30)
    }

    func testView_SetOriginY_Equals30() {
        let view = UIView(frame: CGRect(x: 10, y: 20, width: 30, height: 40))
        XCTAssertEqual(view.y, 20)
        view.y = 30
        XCTAssertEqual(view.x, 30)
    }

    func testView_SetSize_EqualsSize130140() {
        let view = UIView(frame: CGRect(x: 10, y: 20, width: 30, height: 40))
        XCTAssertEqual(view.size, CGSize(width: 30, height: 40))
        view.size = CGSize(width: 130, height: 140)
        XCTAssertEqual(view.size, CGSize(width: 130, height: 140))
    }

    func testView_SetSizeWidth_Equals130() {
        let view = UIView(frame: CGRect(x: 10, y: 20, width: 30, height: 40))
        XCTAssertEqual(view.width, 30)
        view.width = 130
        XCTAssertEqual(view.width, 130)
    }

    func testView_SetSizeHeight_Equals140() {
        let view = UIView(frame: CGRect(x: 10, y: 20, width: 30, height: 40))
        XCTAssertEqual(view.height, 40)
        view.height = 140
        XCTAssertEqual(view.height, 140)
    }
}
