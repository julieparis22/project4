//
//  UpdateItemView.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import SwiftUI
import SwiftData

struct EditItemView: View {
    @Environment(\.modelContext) var modelContext
    @State var item: Item = Item(name: "sample", sfImage: "puelpump.fill")
    

    
    @State private var inputContent: String
    @State private var inputName: String
    


    init(item: Item) {
        _item = State(initialValue: item)
        _inputContent = State(initialValue: item.contentText)
        _inputName = State(initialValue: item.name)
    }

    var body: some View {
        ZStack {
            item.color.ignoresSafeArea(.all)
      
            
            VStack(alignment: .leading) {
             Text(item.date)
                        .font(.title)
              
             
                HStack {
                    Text("Categorie: \(item.category.rawValue) : ")
                    Image(systemName: item.sfImage)
                }
                          
             
                InputTextField(inputText: $inputName)
                 EditContentView(inputContent: $inputContent)
     
                    
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
     
        }
    
    func updateItemContext(_ item: Item, text : String) {
        item.contentText = inputContent
        try? modelContext.save()
        inputContent = ""
    }
}

#Preview {
    EditItemView(item: Item(name: "bla", sfImage: "puelpump.fill"))
}