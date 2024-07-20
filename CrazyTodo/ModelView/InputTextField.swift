//
//  InputTextView.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import SwiftUI
import SwiftData
import Foundation

struct InputTextField: View {
    @Binding var inputText: String
    @State private var placeHolder: String = ""

    var body: some View {
        ZStack {
            if inputText.isEmpty {
                Text("Nom")
                    .foregroundColor(.textField)
                    .padding(.leading, 8)
                    .padding(.vertical, 12)
            }
            
            TextField("", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(8)
                .border(Color.gray, width: 1)
        }
    }
}

#Preview {
    InputTextField(inputText: .constant("test"))
}
