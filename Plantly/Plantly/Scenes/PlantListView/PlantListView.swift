//
//  PlantListView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/01.
//

import SwiftUI

struct PlantListView: View {
    
    @State var searchText = ""
    @State var isSearching = false

    var plants: [Plant] = Plants
    
    var body: some View {
        NavigationView {
            ScrollView {
                SearchBarView(searchText: $searchText, isSearching: $isSearching)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                LazyVStack() {
                    ForEach(plants.filter({searchText.isEmpty ? true : $0.name.contains(searchText)})) { item in
                        NavigationLink(destination: PlantDetailView(plant: item)) {
                            PlantRowView(plant: item)
                                .padding(.vertical, 5)
                        }
                    }
                }
            }
            .navigationTitle("Plants")
        }
        .accentColor(.white)
    }
}

struct PlantListView_Previews: PreviewProvider {
    static var previews: some View {
        PlantListView()
            .previewLayout(.sizeThatFits)
    }
}
