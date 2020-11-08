//
//  TestChooseAnOptionStyleView.swift
//  Tests
//
//  Created by Kirill Pustovalov on 14.09.2020.
//

import SwiftUI

struct TestChooseAnOptionStyleView: View {
    let buttons = ["Question 1/100: Choose the function parameter that allows to modify a variable defined outside the function.", "While", "@escaping", "som", "Iout", "Whle", "@esaping", "sme"] //testanswermodel later
    
    let columns = [
        GridItem(.adaptive(minimum: 200))
    ]
    
    var body: some View {
        VStack {
            Spacer()
            ScrollView(.vertical) {
                Text("Question 1/100: Choose the function parameter that allows to modify a variable defined outside the function.")
                    .font(.title2)
            }
            .padding()
            Spacer()
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(buttons, id: \.self) { button in
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .foregroundColor(Color(.systemGray5))
                            Button {
                                
                            } label: {
                                VStack {
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        Text(button)
                                            .foregroundColor(Color(.label))
                                            .padding()
                                        Spacer()
                                    }
                                    Spacer()
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct TestChooseAnOptionStyleView_Previews: PreviewProvider {
    static var previews: some View {
        TestChooseAnOptionStyleView()
    }
}
