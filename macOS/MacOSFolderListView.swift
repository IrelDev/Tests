//
//  MacOSFolderListView.swift
//  Tests (macOS)
//
//  Created by Kirill Pustovalov on 12.09.2020.
//

import SwiftUI

struct MacOSFolderListView: View {
    var body: some View {
        List {
            Section(header: Text("Folders")) {
                NavigationLink(
                    destination: MacOSTestListView(),
                    label: {
                        ImageTextComponentView(text: "Tests")
                    })
                ImageTextComponentView(text: "Recently Deleted")
                ImageTextComponentView(text: "Custom Folder")
            }
        }
        .listStyle(SidebarListStyle())
    }
}

struct MacOSFolderListView_Previews: PreviewProvider {
    static var previews: some View {
        MacOSFolderListView()
    }
}
