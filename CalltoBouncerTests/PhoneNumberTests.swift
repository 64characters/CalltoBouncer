//
//  PhoneNumberTests.swift
//  CalltoBouncer
//
//  Copyright © 2017 64 Characters
//

import XCTest

final class PhoneNumberTests: XCTestCase {
    func testStripsCallto() {
        let sut = PhoneNumber(calltoURL: "callto:any")

        XCTAssertEqual(sut, "any")
    }

    func testStripsTwoSlashes() {
        let sut = PhoneNumber(calltoURL: "callto://any")

        XCTAssertEqual(sut, "any")
    }

    func testReturnsOriginalStringWhenThereIsNoCallto() {
        let sut = PhoneNumber(calltoURL: "any")

        XCTAssertEqual(sut, "any")
    }
}
