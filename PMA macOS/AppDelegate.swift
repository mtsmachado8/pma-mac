//
//  AppDelegate.swift
//  PMA macOS
//
//  Created by Tomas Martins on 30/01/20.
//  Copyright © 2020 Tomas Martins. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        _ = ViewPresenter.shared.statusBar
        if SessionHelper.shared.hasSession {
            SessionHelper.shared.performLogin { }
        }
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        EntryManager.clearDraft()
    }
}
