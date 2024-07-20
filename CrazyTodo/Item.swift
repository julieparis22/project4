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
    
    //fichu Category
     
    enum Category: String, CaseIterable, Identifiable {
        case leisure = "leisure"
         case work = "work"
         case family = "family"
         case friends = "friends"
        case other = "other"
        
        var id: String { rawValue }
     }
     
    public var categoryRawValue: String?
    
    static var defaultCategory: Category = .other
  

  //   static var defaultCategory: Category = .other
   
     
     private var computedCategory: Category {
         get {
             return Category(rawValue: categoryRawValue ?? "") ?? Item.defaultCategory
         }
         set {
             categoryRawValue = newValue.rawValue
         }
     }
     
    var category: Category {
           get {
               return Category(rawValue: categoryRawValue ?? "") ?? Item.defaultCategory
           }
           set {
               categoryRawValue = newValue.rawValue
           }
       }
       
    //fichu Category fin
     var date: String {
         let dateFormatter = DateFormatter()
         dateFormatter.dateStyle = .medium
         dateFormatter.timeStyle = .short
         return dateFormatter.string(from: Date())
     }

     // Initialiseur
    init(name: String) {
          self.name = name
      
          
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
