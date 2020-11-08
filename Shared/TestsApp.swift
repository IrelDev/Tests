//
//  TestsApp.swift
//  Shared
//
//  Created by Kirill Pustovalov on 14.09.2020.
//

import SwiftUI

@main
struct TestsApp: App {
    var body: some Scene {
        WindowGroup {
            #if os(macOS)
            MacOSMainView()
            #else
            IOSMainView()
                .accentColor(Color(.systemPurple))
            #endif
        }
        .commands {
            SidebarCommands()
        }
    }
}
