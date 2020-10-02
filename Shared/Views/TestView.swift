//
//  TestView.swift
//  Tests
//
//  Created by Kirill Pustovalov on 11.09.2020.
//

import SwiftUI

struct TestView: View {
    @State var selectedTestIndex = 0
    @State var isExpanded = false
    
    var testsCompleted = 15
    var progress: CGFloat = 15 / 50
    var testCount = 50
    
    var body: some View {
        let testView = HStack {
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
        }
        
        Group {
            if isExpanded {
                testView
                    .transition(AnyTransition.scale.animation(.linear))
            } else {
                VStack {
                    HStack {
                        Text("Swift final test 10.06.20")
                            .lineLimit(2)
                            .font(.system(size: 40, weight: .bold))
                        Spacer()
                    }.padding()
                    Spacer()
                    testView
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
                .transition(AnyTransition.identity.animation(.linear).combined(with: AnyTransition.opacity.animation(.linear)))
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {
            
            isExpanded.toggle()
            
        }, label: {
            (isExpanded ? Image(systemName: "rectangle.compress.vertical") : Image(systemName: "rectangle.expand.vertical")).adoptToImageModifier(withSize: 16)
        }))
    }
}


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
