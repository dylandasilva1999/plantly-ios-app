//
//  Category.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/12.
//

import SwiftUI

//Category Model
struct Category: Identifiable {
    var id = UUID()
    var category: String
    var image: String
}
