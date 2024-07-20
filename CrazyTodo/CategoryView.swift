//
//  CategoryView.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import SwiftUI

import SwiftUI

struct CategoryView: View {
    @State var item: Item = Item(name: "sample")
     
     var body: some View {
         VStack {
             Text("Current Category: \(item.category.rawValue)")
             
             Picker("Select Category", selection: $item.category) {
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
    CategoryView()
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
