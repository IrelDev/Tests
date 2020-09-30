//
//  TestTypeStyleView.swift
//  Tests
//
//  Created by Kirill Pustovalov on 14.09.2020.
//

import SwiftUI

struct TestTypeStyleView: View {
    @State var isTextFieldExpanded: Bool = false
    @State var answer: String = ""
    @State var submitted = false
    
    var body: some View {
        GeometryReader { reader in
            VStack {
                Spacer()
                ScrollView(.vertical) {
                    Text("Question 1/100: Write the function parameter that allows to modify a variable defined outside the function.Question 1/100: Write the function parameter that allows to modify a variable defined")
                        .font(.title2)
                }
                .padding([.leading, .trailing, .top])
                .onTapGesture {
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }
                TextField("Write your answer here", text: $answer)
                    .onTapGesture { }
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(25)
                    .frame(width: reader.size.width * 0.9)
                    .padding()
            }
        }
    }
}

struct TestTypeStyleView_Previews: PreviewProvider {
    static var previews: some View {
        TestTypeStyleView()
    }
}
