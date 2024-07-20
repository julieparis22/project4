//
//  EditContentView.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import SwiftUI

struct EditContentView: View {
    @Binding var inputContent: String

    var body: some View {
        VStack {
            TextEditor(text: $inputContent)
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(8)
                .border(Color.gray, width: 1)
                .frame(height: 150)
                .padding()
        }
    }
}

#Preview {
    EditContentView(inputContent: .constant("test"))
}
