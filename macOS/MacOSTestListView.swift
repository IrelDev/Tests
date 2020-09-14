//
//  MacOSTestListView.swift
//  Tests (macOS)
//
//  Created by Kirill Pustovalov on 13.09.2020.
//

import SwiftUI

struct MacOSTestListView: View {
    let pinned = 8
    var body: some View {
        List {
            if pinned > 0 {
                Section(header: TestListPinnedSectionView()) {
                    ForEach(0..<pinned) { index in
                        NavigationLink(destination: Text("Pinned distenation \(index)")) {
                            TestListRowView()
                        }
                    }
                }
            }
            Section {
                ForEach(0..<15) { index in
                    NavigationLink(destination: Text("Distenation \(index)")) {
                        TestListRowView()
                    }
                }
            }
        }
        //grouped https://medium.com/@luca.jon/create-an-inset-grouped-list-in-swiftui-for-macos-20c0bcfaaa7
    }
}

struct MacOSTestListView_Previews: PreviewProvider {
    static var previews: some View {
        MacOSTestListView()
    }
}
