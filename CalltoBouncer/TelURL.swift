//
//  TelURL.swift
//  CalltoBouncer
//
//  Copyright © 2017 64 Characters
//

typealias TelURL = String

extension TelURL {
    init(phone: PhoneNumber) {
        self = "tel:\(phone)"
    }
}
