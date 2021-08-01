//
//  Plant.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/01.
//

import SwiftUI

struct Plant: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var image: String
    var type: String
    var propagation: String
    var light: String
    var category: String
}
