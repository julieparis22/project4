//
//  InputTextView.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import SwiftUI

import SwiftData
import Foundation

struct InputNameView: View {
    @Binding var inputText: String // Ajout de 'private' pour le champ @State

    var body: some View {
     
            VStack {
                TextField("Type your title here", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

        
           
            }
          
        
    }
}

#Preview {
    InputNameView(inputText:.constant("test"))
}
