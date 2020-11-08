//
//  TestListRowView.swift
//  Tests
//
//  Created by Kirill Pustovalov on 12.09.2020.
//

import SwiftUI

struct TestListRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
        Text("Name of the test")
            .font(.headline)
        Text("10.09.2020")
            .font(.caption)
            .foregroundColor(Color(.systemGray))
        }
    }
}

struct TestListRowView_Previews: PreviewProvider {
    static var previews: some View {
        TestListRowView()
    }
}
