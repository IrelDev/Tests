//
//  MacOSMainView.swift
//  Tests (macOS)
//
//  Created by Kirill Pustovalov on 12.09.2020.
//

import SwiftUI

struct MacOSMainView: View {
    var body: some View {
        NavigationView {
            FolderListView()
            MacOSTestListView()
            TestView()
        }
        .navigationTitle("")
    }
}

struct MacOSMainView_Previews: PreviewProvider {
    static var previews: some View {
        MacOSMainView()
    }
}
