//
//  ContentView.swift
//  CustomTextField
//
//  Created by Ninoy Ofiaza on 8/20/20.
//  Copyright © 2020 BOfiaza. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var tf1 = "My Custom TextFields"
    var body: some View {
        VStack {
            Text(tf1)
            NJTextField(title: "Name", text: $tf1, height: 60, cornerRadius: 20, leftPadding: 20, rightPadding: 20)
                .foregroundColor(.red)
            NJTextField(title: "Text", text: $tf1, height: 30, cornerRadius: 10, backgroundColor: UIColor.systemFill, borderColor: UIColor.tertiaryLabel, leftPadding: 40, rightPadding: 40)
                .multilineTextAlignment(.trailing)
            NJTextField(title: "Text", text: $tf1, height: 1, cornerRadius: 0, backgroundColor: UIColor.systemIndigo, borderColor: UIColor.systemPink, leftPadding: 5, rightPadding: 75)
                .foregroundColor(.green)
            NJTextField(title: "HEY", text: $tf1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
