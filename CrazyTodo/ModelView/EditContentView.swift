//
//  EditContentView.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import SwiftUI

struct EditContentView: View {
    @Binding var inputContent: String // Ajout de 'private' pour le champ @State
    @Binding var inputName : String

    var body: some View {
     
            VStack {
                InputNameView(inputText: $inputName)
                TextField("Edit Todo", text:  $inputContent)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

        
           
            }
          
        
    }
}

#Preview {
    EditContentView(inputContent:.constant("test"), inputName : .constant("test"))
}
