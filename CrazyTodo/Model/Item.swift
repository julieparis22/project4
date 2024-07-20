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
    


  
    
    // Valeur de couleur mappée pour chaque catégorie
    // Valeur par défaut pour la couleur
     static var defaultColor: Color = .red
     
     // Valeur de couleur stockée sous forme de chaîne (optionnelle si nécessaire)
     public var colorRawValue: String?
     
     // Propriété calculée pour la couleur
    // Propriété calculée pour la couleur
     var color: Color {
         get {
                    // Assurez-vous que `category` n'est pas nil en fournissant une valeur par défaut
             let effectiveCategory = category
                    return Item.categoryColorMapping[effectiveCategory] ?? Item.defaultColor
                }
         set {
             // Trouver la catégorie correspondant à la nouvelle couleur
             if let category = Item.categoryColorMapping.first(where: { $0.value == newValue })?.key {
                 colorRawValue = category.rawValue
             } else {
                 // Utiliser la catégorie par défaut si la couleur ne correspond à aucune catégorie
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
             // Trouve la catégorie correspondant au nom d'icône
             if let newCategory = Item.categorySystemNameMapping.first(where: { $0.value == newValue })?.key {
                 category = newCategory
             } else {
                 category = Item.defaultCategory
             }
         }
     }
     
     // Dictionnaire pour mapper chaque catégorie à une couleur spécifique
 

    var name: String
     var id = UUID().uuidString
     var contentText: String = " "
   // var color : Color
  //  var color : Color = Color("other")
    
    //fichu Category
     
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
  

  //   static var defaultCategory: Category = .other
   
     
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
       
    //fichu Category fin
    var date: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale(identifier: "fr_FR") // Définir la locale en français
        return dateFormatter.string(from: Date())
    }

    init(name: String, category: Category = .other, sfImage : String) {
         self.name = name
         self.category = category
        self.sfImage = "puelpump.fill"
     }
     
   

 }

