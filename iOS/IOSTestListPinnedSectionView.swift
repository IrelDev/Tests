//
//  IOSTestListPinnedSectionView.swift
//  Tests (iOS)
//
//  Created by Kirill Pustovalov on 13.09.2020.
//

import SwiftUI

struct IOSTestListPinnedSectionView: View {
    @Binding var isPinnedSectionExpanded: Bool
    var body: some View {
        HStack {
            TestListPinnedSectionView()
            Spacer()
            
            Image(systemName: isPinnedSectionExpanded ? "chevron.down" : "chevron.right").adoptToImageModifier()
                .onTapGesture {
                    isPinnedSectionExpanded.toggle()
                }
        }
    }
}

struct IOSTestListPinnedSection_Previews: PreviewProvider {
    static var previews: some View {
        IOSTestListPinnedSectionView(isPinnedSectionExpanded: .constant(true))
    }
}
