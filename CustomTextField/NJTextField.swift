//
//  NJTextField.swift
//  CustomTextField
//
//  Created by Ninoy Ofiaza on 8/20/20.
//  Copyright © 2020 BOfiaza. All rights reserved.
//

import SwiftUI

public struct NJTextField: View {
    
    var title: String
    var text: Binding<String>
    var height: CGFloat = 48
    var cornerRadius: CGFloat = 12.0
    var backgroundColor: UIColor = UIColor.systemBackground
    var borderColor: UIColor = UIColor.systemGray
    var leftPadding: CGFloat = 40
    var rightPadding: CGFloat = 40
    
    public var body: some View {
        HStack {
            Spacer(minLength: leftPadding)
            HStack {
                Spacer(minLength: 12)
                TextField(title, text: text)
                Spacer(minLength: 12)
            }
                .frame(width: nil, height: textFieldHeight(), alignment: .center)
                .background(textFieldBackgroundColor())
                .cornerRadius(cornerRadius)
                .addBorder(textFieldBorderColor(), cornerRadius: cornerRadius)
            Spacer(minLength: rightPadding)
        }
    }
    
    private func textFieldHeight() -> CGFloat {
        height < 24 ? 24 : height
    }
    
    private func textFieldBackgroundColor() -> Color {
        Color(backgroundColor)
    }
    
    private func textFieldBorderColor() -> Color {
        Color(borderColor)
    }
    
}

private extension View {
    func addBorder<S>(_ content: S, width: CGFloat = 1, cornerRadius: CGFloat) -> some View where S : ShapeStyle {
        return overlay(RoundedRectangle(cornerRadius: cornerRadius).strokeBorder(content, lineWidth: width))
    }
}

struct NJTextfield_Previews: PreviewProvider {
    @State static var text = ""
    static var previews: some View {
        let title = "Title"
        return NJTextField(title: title, text: $text, height: 32, cornerRadius: 12, backgroundColor: UIColor.yellow, borderColor: UIColor.green)
    }
}
