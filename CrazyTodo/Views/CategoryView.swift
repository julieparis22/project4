//
//  CategoryView.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import SwiftUI

import SwiftUI

struct CategoryView: View {
    @Binding var dummyItem: Item
    @Binding var category: Item.Category
     var body: some View {
         VStack {
             
             Picker("Select Category", selection: $dummyItem.category) {
                 ForEach(Item.Category.allCases) { category in
                     Text(category.rawValue).tag(category)
                   
                 }
         
             }
             .pickerStyle(SegmentedPickerStyle())
         }
         .padding()
     }
}


#Preview {
    CategoryView(dummyItem: .constant(Item(name: "test", sfImage: "fuelpump.fill")), category: .constant(.other))
}
