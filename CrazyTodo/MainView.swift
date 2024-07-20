//
//  MainView.swift
//  CrazyTodo
//
//  Created by julie ryan on 18/07/2024.
//

import SwiftUI
import SwiftData
import Foundation

struct MainView: View {
    @State var dummyItem = Item(name: "test")
    @Environment(\.modelContext) var modelContext
    @State private var inputText: String = ""
    @State var selectedCategory: Item.Category = .family
    @Query var arrayOfItems: [Item]

    var body: some View {
        NavigationView {
            VStack {
                InputNameView(inputText: $inputText)
                Button("ADD +", action: addItem)
                CategoryView(dummyItem: $dummyItem, category: $selectedCategory)

                
                Text(inputText)
                    .font(.largeTitle)
                Spacer()
                VStack {
                    ForEach(arrayOfItems) { item in
                        HStack {
       
                            Text(item.date)
                            Text(item.name)
                 
                            NavigationLink(destination: UpdateItemView(item: item)) {
                                Text("Edit")
                                    .foregroundColor(.blue)
                            }
                            
                            Button(action: { deleteItems(item) }) {
                                Text("-")
                                    .font(.title)
                            }
                        }
                    }
                }
                Spacer()
            }
            .navigationBarTitle("Crazy Todo").font(.callout)
        }
    }
    
    
    func addItem() {
        let item = Item(name: inputText)
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
    MainView()
}
/*
**/
