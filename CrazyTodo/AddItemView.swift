//
//  AddItemView.swift
//  CrazyTodo
//
//  Created by julie ryan on 20/07/2024.
//

import SwiftUI
import SwiftData
import Foundation

struct AddItemView: View {
    @State var dummyItem = Item(name: "test", sfImage: "fuelpump.fill")
    @Environment(\.modelContext) var modelContext
    @State private var inputText: String = ""
    @State var selectedCategory: Item.Category = .family
    @Query var arrayOfItems: [Item]
    @State private var inputContent : String = ""

    var body: some View {
        NavigationView {
            VStack {
                InputTextField(inputText: $inputText)
                EditContentView(inputContent: $inputContent)
                CategoryView(dummyItem: $dummyItem, category: $selectedCategory)
                Button("AJOUTER +", action: addItem)
               
                Spacer()
            }
            .navigationBarTitle("Crazy Todo").font(.callout)
        }
    }
    
    
    func addItem() {
        let item = Item(name: inputText, sfImage: "fuelpump.fill")
        item.contentText = inputContent
        item.category = dummyItem.category
        item.color = Color(dummyItem.category.rawValue)
        modelContext.insert(item)
        inputText = ""
    }
    
    func deleteItems(_ item: Item) {
        modelContext.delete(item)
    }
    
    func updateItem(_ item: Item) {
        item.name = "updated"
        try? modelContext.save()
    }
    
}

#Preview {
    AddItemView()
}
/**
 Spacer()
 ScrollView {
     VStack {
         ForEach(arrayOfItems) { item in
             HStack {

                 Text(item.date)
                 Text(item.name)
      
                 NavigationLink(destination: UpdateItemView(item: item)) {
                     Text("Editer")
                
                 }
                 
                 Button(action: { deleteItems(item) }) {
                     Text("--").font(.title)
                      
                 }
             }
         }
     }.padding()
 }
 
 */
