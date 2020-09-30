//
//  TestView.swift
//  Tests
//
//  Created by Kirill Pustovalov on 11.09.2020.
//

import SwiftUI

struct TestView: View {
    @State var selectedTestIndex = 0
    var testsCompleted = 15
    var progress: CGFloat = 15 / 50
    var testCount = 50
    
    var body: some View {
        VStack {
            HStack {
                Text("Swift final test 10.06.20")
                    .lineLimit(2)
                    .font(.system(size: 40, weight: .bold))
                Spacer()
            }.padding()
            Spacer()
            GeometryReader { reader in
                HStack {
                    Spacer()
                    TabView(selection: $selectedTestIndex) {
                        ForEach(0..<testCount) { index in
                            ZStack {
                                Color(.systemGray6)
                                    .cornerRadius(25)
                                if index % 2 == 0 {
                                    TestTypeStyleView()
                                } else {
                                    TestChooseAnOptionStyleView()
                                }
                            }
                        }
                        .cornerRadius(25)
                        .padding()
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    Spacer()
                }
                .position(x: reader.size.width / 2, y: reader.size.height / 2)
            }
            VStack {
                HStack {
                    Text("Completion: \(testsCompleted)/\(testCount)")
                        .frame(alignment: .leading)
                    Spacer()
                }
                TestProgressView(fillColor: Color(.systemPurple), progress: progress)
            }
            .padding()
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Image(systemName: "ellipsis.circle").adoptToImageModifier(withSize: 16).contextMenu {
            
        })
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
