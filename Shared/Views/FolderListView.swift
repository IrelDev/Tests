//
//  FolderListView.swift
//  Tests
//
//  Created by Kirill Pustovalov on 12.09.2020.
//

import SwiftUI

struct FolderListView: View {
    var body: some View {
        NavigationView {
            #if os(macOS)
            MacOSFolderListView()
            #else
            IOSFolderListView()
            #endif
        }
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        FolderListView()
    }
}
