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
            .navigationBarTitle("Ajouter").font(.callout).foregroundStyle(.button)
        }
    }
    
    
    func addItem() {
        let item = Item(name: inputText, sfImage: "fuelpump.fill")
        item.contentText = inputContent
        item.category = dummyItem.category
        item.color = Color(dummyItem.category.rawValue)
        modelContext.insert(item)
        inputText = ""
        inputContent = ""
    }
    

    

    
}

#Preview {
    AddItemView()
}
