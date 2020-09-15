//
//  TestView.swift
//  Tests
//
//  Created by Kirill Pustovalov on 11.09.2020.
//

import SwiftUI

struct TestView: View {
    @State var selection = 0
    var body: some View {
        VStack {
            Text("Math test 10.06.20")
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(.white)
                .padding()
            Spacer()
            GeometryReader { reader in
                HStack {
                    Spacer()
                    TabView(selection: $selection) {
                        ForEach(0..<50) { index in
                            ZStack {
                                Color(.systemPurple)
                                Text("\(index)")
                            }
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .cornerRadius(25)
                    .frame(width: reader.size.width / 1.2, height: reader.size.height / 1.2)
                    Spacer()
                }
            }
            Spacer()
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}
struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
