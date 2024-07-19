//
//  Item.swift
//  CrazyTodo
//
//  Created by julie ryan on 18/07/2024.
//

import Foundation
import SwiftData
import SwiftUI
import UIKit


@Model
final class Item {

    var name: String
     var id = UUID().uuidString
     var contentText: String = " "
     

    
    var category : String
    
    var indexCategory: Int {
        didSet {
            if index < 0 {
                index = 0
            } else if index > 4 {
                index = 4
            }
        }
    }
    
  //  var Categories = ["other", "work", "leisure","family","friends" ]

     var date: String {
         let dateFormatter = DateFormatter()
         dateFormatter.dateStyle = .medium
         dateFormatter.timeStyle = .short
         return dateFormatter.string(from: Date())
     }

     // Initialiseur
    init(name: String, indexCategory : Int) {
         self.name = name
         self.indexCategory = indexCategory
        self.category = Categories[0]
    
     }
    
   

 }

/*     // Enum définie à l'intérieur de la classe Item
 
 enum Category: String, CaseIterable, Identifiable {
      case work
      case leisure
      case family
      case friends
      case other

      var id: String { rawValue }
  }
 static var defaultCategory : Category = .other
 
 **/
