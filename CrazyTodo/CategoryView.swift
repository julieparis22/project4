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
             Rectangle().foregroundStyle(dummyItem.color)
             Text("selected: \(dummyItem.category.rawValue)")
             
             Picker("Select Category", selection: $dummyItem.category) {
                 ForEach(Item.Category.allCases) { category in
                     Text(category.rawValue).tag(category)
                 }
                 Picker("Select Category", selection: $category) {
                               ForEach(Item.Category.allCases) { cat in
                                   Text(cat.rawValue).tag(cat)
                               }
                           }
             }
             .pickerStyle(SegmentedPickerStyle())
         }
         .padding()
     }
}


#Preview {
    CategoryView(dummyItem: .constant(Item(name: "test")), category: .constant(.other))
}
/**    
 
 
 Text("Current Category: \(item.category.rawValue)")
             .padding()

         Picker("Select Category", selection: $item.category) {
             ForEach(Category.allCases) { category in
                 Text(category.rawValue.capitalized).tag(category)
             }
         }
 
 
 
 Picker("Category", selection: $category) {
 ForEach(Item.Category.allCases) { category in
     Text(self.categoryTitle(for: category))
         .tag(category)
 }
}
.pickerStyle(SegmentedPickerStyle())
}
.padding()
}

private func categoryTitle(for category: Item.Category) -> String {
switch category {
case .work:
return "Work"
case .leisure:
return "Leisure"
case .family:
return "Family"
case .friends:
return "Friends"
case .other:
return "Other"
}*/
