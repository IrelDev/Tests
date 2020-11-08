//
//  ImageModifier.swift
//  Tests
//
//  Created by Kirill Pustovalov on 12.09.2020.
//

import SwiftUI

extension Image {
    func adoptToImageModifier(withSize size: CGFloat = 12, color: Color = Color(.systemPurple)) -> some View {
        self.resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: size, height: size)
            .foregroundColor(color)
    }
}
