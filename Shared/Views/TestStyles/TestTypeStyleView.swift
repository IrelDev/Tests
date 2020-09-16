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
        GeometryReader { reader in
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
                                .frame(width: reader.size.width / 4, height: reader.size.width / 4)
                                .foregroundColor(Color(.systemGray5))
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "pencil").adoptToImageModifier(withSize: reader.size.width / 10)
                            })
                        }
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct TestTypeStyleView_Previews: PreviewProvider {
    static var previews: some View {
        TestTypeStyleView()
    }
}
