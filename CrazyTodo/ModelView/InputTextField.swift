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

    var body: some View {
     
            VStack {
                TextField("Nom", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

        
           
            }
          
        
    }
}

#Preview {
    InputTextField(inputText:.constant("test"))
}
