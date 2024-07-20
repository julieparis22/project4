//
//  MainView.swift
//  CrazyTodo
//
//  Created by julie ryan on 18/07/2024.
//

import SwiftUI
import SwiftData
import Foundation

struct TodoListView: View {
    @State var dummyItem = Item(name: "test", sfImage: "fuelpump.fill")
    @Environment(\.modelContext) var modelContext
    @State private var inputText: String = ""
    @State var selectedCategory: Item.Category = .family
    @Query var arrayOfItems: [Item]
    @State private var inputContent : String = ""

    var body: some View {
        NavigationView {
            VStack {
          
                ScrollView {
                    VStack {
                        ForEach(arrayOfItems) { item in
                            ZStack {
                                item.color
                                VStack {
                                    Text(item.date)
                                    HStack {
                                      
                                        NavigationLink(destination: ReadItemView(item: item)) {
                                          
                                            Text(item.name).foregroundStyle(.button)
                                            Image(systemName: "magnifyingglass").foregroundStyle(.script)
                                       
                                        }
                                        Spacer()
                             Button(action: { deleteItems(item) }) {
                                            Text("Effacer -")
                                             
                                        }.foregroundStyle(.delete)
                                        Spacer()
                                    }.padding()
                                }
                            }
                        
                            
                           
                            
                            
                            
                        }
                    }.padding()
                }
        
                
                
                Spacer()
            }
            .navigationBarTitle("Crazy Todo").font(.callout)
        }
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
    TodoListView()
}
