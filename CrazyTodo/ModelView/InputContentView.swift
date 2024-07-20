//
//  InputContentView.swift
//  CrazyTodo
//
//  Created by julie ryan on 20/07/2024.
//

import SwiftUI

struct InputContentView: View {
    @Binding var inputText: String // Ajout de 'private' pour le champ @State
    var body: some View {
        VStack {
            TextField("Write your Todo here", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

    
       
        }
    }
}

#Preview {
    InputContentView(inputText:.constant("test"))
}
