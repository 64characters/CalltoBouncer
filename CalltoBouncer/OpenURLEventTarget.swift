//
//  OpenURLEventTarget.swift
//  CalltoBouncer
//
//  Copyright © 2017 64 Characters
//

import Cocoa

final class OpenURLEventTarget {
    private let manager: NSAppleEventManager
    private let workspace: NSWorkspace

    init(manager: NSAppleEventManager, workspace: NSWorkspace) {
        self.manager = manager
        self.workspace = workspace
        self.manager.setEventHandler(
            self,
            andSelector: #selector(handle(_:reply:)),
            forEventClass: AEEventClass(kInternetEventClass),
            andEventID: AEEventID(kAEGetURL)
        )
    }

    deinit {
        manager.removeEventHandler(forEventClass: AEEventClass(kInternetEventClass), andEventID: AEEventID(kAEGetURL))
    }

    @objc private func handle(_ event: NSAppleEventDescriptor, reply: NSAppleEventDescriptor) {
        if let calltoURL = event.paramDescriptor(forKeyword: keyDirectObject)?.stringValue {
            if let telURL = URL(string: TelURL(phone: PhoneNumber(calltoURL: calltoURL))) {
                workspace.open(telURL)
            }
        }
    }
}
