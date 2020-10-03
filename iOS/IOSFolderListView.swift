//
//  IOSFolderListView.swift
//  Tests (macOS)
//
//  Created by Kirill Pustovalov on 12.09.2020.
//

import SwiftUI

struct IOSFolderListView: View {
    @State var isActive = false
    @State var wasViewShown = false
    
    var body: some View {
        let list = List {
            NavigationLink(destination: IOSTestListView().onAppear {
                self.wasViewShown = true
            }, isActive: $isActive) {
                ImageTextComponentView(text: "Tests")
            }
            ImageTextComponentView(text: "Recently Deleted")
            ImageTextComponentView(text: "Custom Folder")
                .onAppear {
                    self.isActive = false
                }
        }
        if wasViewShown {
            if UIDevice.current.userInterfaceIdiom == .pad {
                list.listStyle(GroupedListStyle())
                    .navigationBarTitle("Folders")
                    .navigationBarItems(trailing: NavigationLink(destination: IOSTestEditorView(), label: {
                        Image(systemName: "folder.badge.plus")
                    }))
            } else if UIDevice.current.userInterfaceIdiom == .phone {
                list.listStyle(GroupedListStyle())
                    .navigationBarTitle("Folders")
                    .navigationBarItems(leading: NavigationLink(destination: IOSTestEditorView(), label: {
                        Image(systemName: "folder.badge.plus").adoptToImageModifier(withSize: 16)
                    }),trailing: NavigationLink(destination: IOSTestEditorView(), label: {
                        Image(systemName: "square.and.pencil").adoptToImageModifier(withSize: 16)
                    }))
            }
        } else {
            list.opacity(0)
                .onAppear {
                    self.isActive = true
                }
        }
    }
}

struct IOSFolderListView_Previews: PreviewProvider {
    static var previews: some View {
        IOSFolderListView()
    }
}
