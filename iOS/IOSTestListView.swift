//
//  IOSTestListView.swift
//  Tests (iOS)
//
//  Created by Kirill Pustovalov on 13.09.2020.
//

import SwiftUI

struct IOSTestListView: View {
    @State var isPinnedSectionExpanded = true
    let pinned = 8
    var body: some View {
        List {
            if pinned > 0 {
                Section(header: IOSTestListPinnedSectionView(isPinnedSectionExpanded: $isPinnedSectionExpanded)) {
                    if isPinnedSectionExpanded {
                        ForEach(0..<pinned) { index in
                            NavigationLink(destination: Text("Pinned")) {
                                TestListRowView()
                            }
                        }
                    }
                }
            }
            Section {
                ForEach(0..<15) { index in
                    NavigationLink(destination: Text("Destination \(index)")) {
                        TestListRowView()
                    }
                }
            }
        }
        .listRowBackground(Color(.systemGray6))
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Tests")
        .navigationBarItems(trailing: Image(systemName: "square.and.pencil").adoptToImageModifier(withSize: 16))
    }
}

struct IOSTestListView_Previews: PreviewProvider {
    static var previews: some View {
        IOSTestListView()
    }
}
