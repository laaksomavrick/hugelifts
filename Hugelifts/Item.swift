//
//  Item.swift
//  Hugelifts
//
//  Created by Mavrick Laakso on 2024-03-04.
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
