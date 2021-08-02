//
//  PlantListView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/01.
//

import SwiftUI

struct PlantListView: View {
    
    var plants: [Plant] = Plants
    
    var body: some View {
        ScrollView {
            LazyVStack() {
                ForEach(plants) {
                    item in PlantRowView(plant: item)
                        .padding(.vertical, 5)
                }
            }
        }
    }
}

struct PlantListView_Previews: PreviewProvider {
    static var previews: some View {
        PlantListView()
    }
}
