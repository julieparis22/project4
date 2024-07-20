//
//  UpdateItemView.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import SwiftUI

struct UpdateItemView: View {
    @Environment(\.modelContext) var modelContext
    @State var item: Item
    
    @State private var inputContent: String

    init(item: Item) {
        _item = State(initialValue: item)
        _inputContent = State(initialValue: item.contentText)
    }

    var body: some View {
        VStack(alignment: .leading) {
         
            Text(item.date) // Afficher la date de l'élément
                .font(.title)
            
            // Vue d'édition pour le contenu
            EditContentView(inputContent: $inputContent)
            
            Button(action: {
                updateItemContext(item, text: inputContent)
            }) {
                Text("Submit change")
            }
            ScrollView {
                Text(item.contentText)
                    .padding()
            }
       
            
            Spacer()
        }
        .padding()

    }
    
    func updateItemContext(_ item: Item, text : String) {
        item.contentText = inputContent
        try? modelContext.save()
        inputContent = ""
    }
}

#Preview {
    UpdateItemView(item: Item(name: "bla"))
}
/*    InputNameView(inputText: $inputName)
 Button(action: {updateItem(item, text: inputName) }) {
    Text("edit name ")

        
 }**/
