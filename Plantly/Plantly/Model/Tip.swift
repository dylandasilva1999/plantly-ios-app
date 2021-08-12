//
//  Tip.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/02.
//

import SwiftUI

//Tip Model
struct Tip: Identifiable {
    var id = UUID()
    var tip: String
    var image: String
}
