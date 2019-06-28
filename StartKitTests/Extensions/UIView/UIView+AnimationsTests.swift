//
//  UIView+AnimationsTests.swift
//  StartKitTests
//
//  Created by Dima Kalachniuk on 28/06/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import XCTest
@testable import StartKit

class TestView: UIView {
    var layoutIfNeededIsCalled = false

    override func layoutIfNeeded() {
        layoutIfNeededIsCalled = true
        super.layoutIfNeeded()
    }
}

class UIView_AnimationsTests: XCTestCase {

    func testView_LayoutIfNeeded_called() {
        let expectation = XCTestExpectation(description: "Animation of TestView")
        let testView = TestView(frame: .zero)
        XCTAssertFalse(testView.layoutIfNeededIsCalled)
        testView.animateLayout(duration: 0.25) { completed in
            XCTAssertTrue(testView.layoutIfNeededIsCalled)
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 5.0)
    }

    func testView_LayoutIfNeededAnimation_appliedNewX() {
        let expectation = XCTestExpectation(description: "Animation of TestView")
        let testView = TestView(frame: .zero)
        XCTAssertEqual(testView.x, 0)
        testView.animateLayout(animations: {
            testView.x = 100
        }, completion: { completed in
            XCTAssertEqual(testView.x, 100)
            expectation.fulfill()
        })
        wait(for: [expectation], timeout: 5.0)
    }
}
