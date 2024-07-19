//
//  Category.swift
//  CrazyTodo
//
//  Created by julie ryan on 19/07/2024.
//

import Foundation
import Foundation


import SwiftUI

// Définition de la struct Category avec une énumération interne Value
struct Category22 {

    var test : String = "test"
    
    enum Value: String, CaseIterable, Identifiable {
           case work
           case leisure
           case family
           case friends
           case other

           var id: String { rawValue } // Conformité au protocole Identifiable
       }
       
       var value: Value
    

    }
/*
 // Énumération interne Value
 enum Value: String, CaseIterable, Identifiable {
     case work
     case leisure
     case family
     case friends
     case other
     
     var id: String { rawValue } // Conformité au protocole Identifiable
 }
 
 // Propriété pour stocker la valeur de la catégorie
 var value: Value
 
 // Valeur par défaut pour la catégorie
 static let defaultValue: Value = .family
 
 // Initialiseur
 init(value: Value = Category.defaultValue) {
     self.value = value
 }
 
 // Propriété pour obtenir la couleur associée à chaque catégorie
 
 var color: Color {
         switch value {
         case .work:
             return Color("work") // Assurez-vous que "work" est défini dans les assets de couleurs SwiftUI
         case .leisure:
             return Color("leisure") // Assurez-vous que "leisure" est défini dans les assets de couleurs SwiftUI
         case .family:
             return Color("family") // Assurez-vous que "family" est défini dans les assets de couleurs SwiftUI
         case .friends:
             return Color("friends") // Assurez-vous que "friends" est défini dans les assets de couleurs SwiftUI
         case .other:
             return Color("other") // Assurez-vous que "other" est défini dans les assets de couleurs SwiftUI
         }
     }**/
