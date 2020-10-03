//
//  IOSTestListView.swift
//  Tests (iOS)
//
//  Created by Kirill Pustovalov on 13.09.2020.
//

import SwiftUI

struct IOSTestListView: View {
    @State var isPushedToTestEditorFromNavigationBar = false
    let pinned = 8
    
    var body: some View {
        ZStack {
            NavigationLink(destination: IOSTestEditorView(), isActive: $isPushedToTestEditorFromNavigationBar, label: {}).hidden()
        }
        List {
            if pinned > 0 {
                Section(header: TestListPinnedSectionView()) {
                    ForEach(0..<pinned) { index in
                        NavigationLink(destination: TestView()) {
                            TestListRowView()
                        }
                    }
                }
            }
            Section {
                ForEach(0..<15) { index in
                    NavigationLink(destination: TestView()) {
                        TestListRowView()
                    }
                }
            }
        }
        .listRowBackground(Color(.systemGray6))
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Tests")
        .navigationBarItems(trailing: Button(action: { isPushedToTestEditorFromNavigationBar = true }, label: {
            Image(systemName: "square.and.pencil").adoptToImageModifier(withSize: 16)
        }))
    }
}

struct IOSTestListView_Previews: PreviewProvider {
    static var previews: some View {
        IOSTestListView()
    }
}
