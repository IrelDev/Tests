//
//  File.swift
//  Tests
//
//  Created by Kirill Pustovalov on 12.09.2020.
//

import SwiftUI

struct ImageTextComponentView: View {
    var text: String
    
    var body: some View {
        HStack {
            Image(systemName: "folder").adoptToImageModifier()
            Text(text)
        }
    }
}

struct ImageTextComponentView_Previews: PreviewProvider {
    static var previews: some View {
        ImageTextComponentView(text: "Tests")
    }
}
