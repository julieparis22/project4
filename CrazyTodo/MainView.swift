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

    @Environment(\.modelContext) var modelContext
    @State private var inputText: String = ""
 //   @State private var selectedCategory: Category = .other
    @Query var arrayOfItems: [Item]

    var body: some View {
        NavigationView {
            VStack {
                InputNameView(inputText: $inputText)
                Button("ADD +", action: addItem)
                // test CategoryView
                
                CategoryView()
                    .font(.title)
//                CategoryView(category: $selectedCategory)
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
        let item = Item.init(name: inputText)
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
