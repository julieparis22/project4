//
//  MenuView.swift
//  CrazyTodo
//
//  Created by julie ryan on 20/07/2024.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        TabView {
                AddItemView()
                    .tabItem {
                        Image(systemName: "plus.circle.fill")
                        Text("Ajouter element")
                    }
                
                TodoListView()
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Liste")
                    }
            }
    }
}

#Preview {
    MenuView()
}
