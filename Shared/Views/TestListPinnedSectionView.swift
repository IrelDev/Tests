//
//  TestListPinnedSectionView.swift
//  Tests
//
//  Created by Kirill Pustovalov on 11.09.2020.
//

import SwiftUI

struct TestListPinnedSectionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            HStack {
                Image(systemName: "pin.fill").adoptToImageModifier(withSize: 15, color: Color(.systemGray))
                Text("Pinned")
                    .fontWeight(.semibold)
                    .font(.callout)
                    .foregroundColor(Color(.systemGray))
            }
        }
    }
}

struct TestListPinnedSectionView_Previews: PreviewProvider {
    static var previews: some View {
        TestListPinnedSectionView()
    }
}
