//
//  Item.swift
//  Self Portrait
//
//  Created by Scholar on 4/20/24.
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
