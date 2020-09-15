//
//  TestTypeStyleView.swift
//  Tests
//
//  Created by Kirill Pustovalov on 14.09.2020.
//

import SwiftUI

struct TestTypeStyleView: View {
    @State var isTextFieldExpanded: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            ScrollView(.vertical) {
                Text("Question 1/100: Write the function parameter that allows to modify a variable defined outside the function.")
                    .font(.title2)
            }
            .padding()
            Spacer()
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 100, height: 100)
                            .foregroundColor(Color(.systemGray5))
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "pencil").adoptToImageModifier(withSize: 50)
                        })
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct TestTypeStyleView_Previews: PreviewProvider {
    static var previews: some View {
        TestTypeStyleView()
    }
}
