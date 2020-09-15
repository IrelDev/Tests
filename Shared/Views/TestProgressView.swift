//
//  TestProgressView.swift
//  Tests
//
//  Created by Kirill Pustovalov on 15.09.2020.
//

import SwiftUI

struct TestProgressView: View {
    var fillColor: Color
    var progress: CGFloat = 0.0
    var height: CGFloat = 8
    var startPoint = CGPoint(x: 0, y: 0)
    
    var body: some View {
        GeometryReader { geometryReader in
            ZStack {
                Path { path in
                    path.move(to: self.startPoint)
                    path.addRoundedRect(
                        in: CGRect(x: self.startPoint.x, y: self.startPoint.y, width: geometryReader.size.width, height: self.height),
                        cornerSize: CGSize(width: self.height / 2 , height: self.height / 2),
                        style: .circular)
                }
                
                Path { path in
                    path.move(to: self.startPoint)
                    path.addRoundedRect(
                        in: CGRect(x: self.startPoint.x, y: self.startPoint.y, width: geometryReader.size.width * self.progress, height: self.height),
                        cornerSize: CGSize(width: self.height / 2, height: self.height / 2),
                        style: .circular)
                }
                .fill(fillColor)
            }
            .frame(width: geometryReader.size.width, height: self.height)
        }
        .frame(height: self.height)
    }
}

struct TestCompletionView_Previews: PreviewProvider {
    static var previews: some View {
        TestProgressView(fillColor: Color(.systemPurple))
        TestProgressView(fillColor: Color(.systemPurple), progress: 0.5)
    }
}
