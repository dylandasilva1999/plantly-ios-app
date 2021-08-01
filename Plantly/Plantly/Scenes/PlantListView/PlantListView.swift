//
//  PlantListView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/01.
//

import SwiftUI

struct PlantListView: View {
    var body: some View {
        List() {
            PlantRowView(plant: Plants[0])
        }
    }
}

struct PlantListView_Previews: PreviewProvider {
    static var previews: some View {
        PlantListView()
    }
}
