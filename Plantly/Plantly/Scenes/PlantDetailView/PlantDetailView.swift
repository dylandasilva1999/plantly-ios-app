//
//  PlantDetailView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/11.
//

import SwiftUI

struct PlantDetailView: View {
    
    var plant: Plant
    
    var body: some View {
        ZStack {
            Text(plant.name)
        }
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: Plants[0])
    }
}
