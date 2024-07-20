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
    static var defaultColor: Color = .red
    
    public var colorRawValue: String?

    var color: Color {
        get {
            let effectiveCategory = category
            return Item.categoryColorMapping[effectiveCategory] ?? Item.defaultColor
        }
        set {
            if let category = Item.categoryColorMapping.first(where: { $0.value == newValue })?.key {
                colorRawValue = category.rawValue
            } else {
                colorRawValue = Item.defaultCategory.rawValue
            }
        }
    }

    private static let categoryColorMapping: [Category: Color] = [
        .leisure: .leisure,
        .work: .work,
        .family: .family,
        .friends: .friends,
        .other: .other
    ]
    
    private static let categorySystemNameMapping: [Category: String] = [
        .leisure: "heart.fill",
        .work: "figure.dance",
        .family: "figure.2.and.child.holdinghands",
        .friends: "heart.fill",
        .other: "fuelpump.fill"
    ]
    
    var sfImage: String {
        get {
            Item.categorySystemNameMapping[category] ?? "fuelpump.fill"
        }
        set {
            if let newCategory = Item.categorySystemNameMapping.first(where: { $0.value == newValue })?.key {
                category = newCategory
            } else {
                category = Item.defaultCategory
            }
        }
    }
    
    var name: String
    var id = UUID().uuidString
    var contentText: String = " "
    
    enum Category: String, CaseIterable, Identifiable {
        case leisure = "Loisirs"
        case work = "Travail"
        case family = "Famille"
        case friends = "Amis"
        case other = "Autre"
        
        var id: String { rawValue }
    }
    
    public var categoryRawValue: String?
    
    static var defaultCategory: Category = .other
    
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
    
    var date: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "fr_FR")
        return dateFormatter.string(from: Date())
    }

    init(name: String, category: Category = .other, sfImage: String) {
        self.name = name
        self.category = category
        self.sfImage = sfImage
    }
}


/*import Foundation
 import SwiftData
 import SwiftUI
 import UIKit


 @Model
 final class Item {
     


   

      static var defaultColor: Color = .red
      

      public var colorRawValue: String?
      

      var color: Color {
          get {
                
              let effectiveCategory = category
                     return Item.categoryColorMapping[effectiveCategory] ?? Item.defaultColor
                 }
          set {
   
              if let category = Item.categoryColorMapping.first(where: { $0.value == newValue })?.key {
                  colorRawValue = category.rawValue
              } else {
               
                  colorRawValue = Item.defaultCategory.rawValue
              }
          }
      }
     private static let categoryColorMapping: [Category: Color] = [
        .leisure: .leisure,
        .work: .work,
        .family: .family,
        .friends: .friends,
        .other: .other
     ]
     
     private static let categorySystemNameMapping: [Category: String] = [
        .leisure: "heart.fill",
        .work: "figure.dance",
        .family: "figure.2.and.child.holdinghands",
        .friends: "heart.fill",
        .other: "fuelpump.fill"
     ]
     
     var sfImage: String {
          get {
           
              Item.categorySystemNameMapping[category] ?? "fuelpump.fill"
          }
          set {
         
              if let newCategory = Item.categorySystemNameMapping.first(where: { $0.value == newValue })?.key {
                  category = newCategory
              } else {
                  category = Item.defaultCategory
              }
          }
      }
      

  

     var name: String
      var id = UUID().uuidString
      var contentText: String = " "

      
     enum Category: String, CaseIterable, Identifiable {
         case leisure = "Loisirs"
          case work = "Travail"
          case family = "Famille"
          case friends = "Amis"
         case other = "Autre"
         
         var id: String { rawValue }
      }
      
     public var categoryRawValue: String?
     
     static var defaultCategory: Category = .other
   


    
      
      private var computedCategory: Category {
          get {
              return Category(rawValue: categoryRawValue ?? "") ?? Item.defaultCategory
          }
          set {
              categoryRawValue = newValue.rawValue
          }
      }
      
     var category: Category  {
            get {
                return Category(rawValue: categoryRawValue ?? "") ?? Item.defaultCategory
            }
            set {
                categoryRawValue = newValue.rawValue
            }
        }
        

     var date: String {
         let dateFormatter = DateFormatter()
         dateFormatter.dateStyle = .medium
         dateFormatter.timeStyle = .short
         dateFormatter.locale = Locale(identifier: "fr_FR")
         return dateFormatter.string(from: Date())
     }

     init(name: String, category: Category = .other, sfImage : String) {
          self.name = name
          self.category = category
         self.sfImage = "puelpump.fill"
      }
      
    

  }

**/
