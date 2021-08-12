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
        NavigationView {
            ScrollView {
                LazyVStack() {
                    ForEach(plants) { item in
                        NavigationLink(destination: PlantDetailView(plant: item)) {
                            PlantRowView(plant: item)
                                .padding(.vertical, 5)
                        }
                    }
                }
            }
            .navigationTitle("Flowers")
        }
        .accentColor(.white)
    }
}

struct PlantListView_Previews: PreviewProvider {
    static var previews: some View {
        PlantListView()
    }
}
