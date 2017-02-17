//
//  PhoneNumber.swift
//  CalltoBouncer
//
//  Copyright © 2017 64 Characters
//

import Foundation

typealias PhoneNumber = String

extension PhoneNumber {
    init(calltoURL url: String) {
        self = strippingSlashes(from: strippingCallto(from: url))
    }
}

private func strippingCallto(from string: String) -> String {
    if let range = string.range(of: "callto:") {
        return string.substring(from: range.upperBound)
    } else {
        return string
    }
}

private func strippingSlashes(from string: String) -> String {
    if let range = string.range(of: "//") {
        return string.substring(from: range.upperBound)
    } else {
        return string
    }
}
