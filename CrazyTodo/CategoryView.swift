//
//  CategoryView.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import SwiftUI

import SwiftUI

struct CategoryView: View {
//    @Binding var category: Item.Category
    
    var body: some View {
        VStack {
            Text("Select a Category:")
                .font(.headline)
            
        }
    }
}


#Preview {
    CategoryView()
}
/**      Picker("Category", selection: $category) {
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
