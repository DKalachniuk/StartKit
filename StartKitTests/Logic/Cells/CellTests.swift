//
//  CellTests.swift
//  StartKitTests
//
//  Created by Dima Kalachniuk on 28/06/2019.
//  Copyright © 2019 StartKit. All rights reserved.
//

import XCTest
@testable import StartKit

class CellTests: XCTestCase {

    func test_Cell_Init_Success() {
        let cell = Cell(identifier: "TestCell")
        XCTAssertEqual(cell.identifier, "TestCell")
        XCTAssertNotNil(cell.nib)
    }
}
