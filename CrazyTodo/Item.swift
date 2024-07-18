//
//  Item.swift
//  CrazyTodo
//
//  Created by julie ryan on 18/07/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
