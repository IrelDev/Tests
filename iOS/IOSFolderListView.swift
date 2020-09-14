//
//  IOSFolderListView.swift
//  Tests (macOS)
//
//  Created by Kirill Pustovalov on 12.09.2020.
//

import SwiftUI

struct IOSFolderListView: View {
    var body: some View {
        List {
            NavigationLink(destination: IOSTestListView()) {
                ImageTextComponentView(text: "Tests")
            }
            ImageTextComponentView(text: "Recently Deleted")
            ImageTextComponentView(text: "Custom Folder")
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Folders")
        .navigationBarItems(leading: Image(systemName: "folder.badge.plus").adoptToImageModifier(withSize: 20), trailing: Image(systemName: "square.and.pencil").adoptToImageModifier(withSize: 16))
    }
}

struct IOSFolderListView_Previews: PreviewProvider {
    static var previews: some View {
        IOSFolderListView()
    }
}
