//
//  FlowerPlantListView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/12.
//

import SwiftUI

struct FlowerPlantListView: View {
    @State var searchText = ""
    @State var isSearching = false

    var plants: [Plant] = Plants
    var categories: [Category] = Categories
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Text(categories[0].category)
                        .font(Font.custom("Kollektif-Bold", size: 28))
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.leading, 30)
                .padding(.trailing, 30)
                
                SearchBarView(searchText: $searchText, isSearching: $isSearching)
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    .padding(.bottom, 10)
                    .padding(.top, 10)
                
                LazyVStack() {
                    ForEach(plants.filter({searchText.isEmpty ? true : $0.name.contains(searchText)})) { item in
                        NavigationLink(destination: PlantDetailView(plant: item)) {
                            if (item.category == "Flowering Plants") {
                                PlantRowView(plant: item)
                                    .padding(.vertical, 5)
                            }
                        }
                    }
                }
            }
            .padding(.top, 20)
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .accentColor(.white)
    }
}

struct FlowerPlantListView_Previews: PreviewProvider {
    static var previews: some View {
        FlowerPlantListView()
            .previewLayout(.sizeThatFits)
    }
}
