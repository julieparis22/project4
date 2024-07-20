//
//  UpdateItemView.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import SwiftUI

struct UpdateItemView: View {
    @Environment(\.modelContext) var modelContext
    @State var item: Item = Item(name: "sample")
    

    
    @State private var inputContent: String
    @State private var inputName: String
    


    init(item: Item) {
        _item = State(initialValue: item)
        _inputContent = State(initialValue: item.contentText)
        _inputName = State(initialValue: item.name)
    }

    var body: some View {
        
        VStack(alignment: .leading) {
            Rectangle().foregroundStyle(item.color)
                Text(item.date)
                    .font(.title)
            Text("\( item.category.rawValue)")
                
            Text("Color: \(item.color.description)")
                          .font(.subheadline)
                      
            Text("Current Category: \(item.category.rawValue)")
            
                EditContentView(inputContent: $inputContent, inputName: $inputName)
 
                
                Button(action: {
                    updateItemContext(item, text: inputContent)
                }) {
                    Text("Submit change")
                }
            Text(item.name).font(.title)
                ScrollView {
                  
                    Text(item.contentText)
                        .padding()
                        .foregroundColor(.black)
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
