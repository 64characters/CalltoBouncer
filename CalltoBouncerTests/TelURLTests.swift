//
//  TelURLTests.swift
//  CalltoBouncer
//
//  Copyright © 2017 64 Characters
//

import XCTest

final class TelURLTests: XCTestCase {
    func testAddsTelScheme() {
        let sut = TelURL(phone: PhoneNumber(calltoURL: "callto:any"))

        XCTAssertEqual(sut, "tel:any")
    }
}
