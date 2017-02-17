//
//  AppDelegate.swift
//  CalltoBouncer
//
//  Copyright © 2017 64 Characters
//

import Cocoa

@NSApplicationMain
final class AppDelegate: NSObject, NSApplicationDelegate {
    private let target = OpenURLEventTarget(manager: NSAppleEventManager.shared(), workspace: NSWorkspace.shared())
}

