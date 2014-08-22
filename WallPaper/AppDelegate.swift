//
//  AppDelegate.swift
//  WallPaper
//
//  Created by Joan Barrull Ribalta on 22/08/14.
//  Copyright (c) 2014 com.giria. All rights reserved.
//
import Foundation
import Cocoa
import AppKit

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
        var imgURL: NSURL? = NSURL.fileURLWithPath("/Users/joanbarrullribalta/homerWallpaper.jpeg")
        var error: NSError?
        var workspace = NSWorkspace.sharedWorkspace()
        var screen = NSScreen.mainScreen()
        
        var result : Bool = workspace.setDesktopImageURL(imgURL, forScreen: screen, options: nil, error:&error)
        if result {
            println("Wallppaper set")
        }

    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }


}

