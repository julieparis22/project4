//
//  Category.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
     case work
     case leisure
     case family
     case friends
     case other
     
     var id: String { rawValue } // Conformité au protocole Identifiable
 }
