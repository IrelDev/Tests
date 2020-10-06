//
//  BlurEffectView.swift
//  Tests
//
//  Created by Kirill Pustovalov on 06.10.2020.
//

import SwiftUI

struct BlurEffectView: UIViewRepresentable {
    var effect: UIVisualEffect = UIBlurEffect(style: .regular)
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UIVisualEffectView { UIVisualEffectView() }
    func updateUIView(_ uiView: UIVisualEffectView, context: UIViewRepresentableContext<Self>) { uiView.effect = effect }
}

struct BlurEffectView_Previews: PreviewProvider {
    static var previews: some View {
        BlurEffectView()
    }
}
