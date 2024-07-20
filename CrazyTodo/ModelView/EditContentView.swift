//
//  EditContentView.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import SwiftUI

struct EditContentView: View {
    @Binding var inputContent: String // Ajout de 'private' pour le champ @State
  //  @Binding var inputName : String

    var body: some View {
     
            VStack {
             //   InputTextField(inputText: $inputName)
              
                
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
    EditContentView(inputContent:.constant("test"))
}
