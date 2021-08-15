//
//  PlantListView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/01.
//

import SwiftUI

struct PlantListView: View {
    
    //State var for search text input
    @State var searchText = ""
    //State var for if the user is busy searching
    @State var isSearching = false
    
    //Initialiser for the plants list/data
    var plants: [Plant] = Plants
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Text("All Plants")
                        .font(Font.custom("Kollektif-Bold", size: 28))
                        .foregroundColor(.black)
                        .accessibilityIdentifier("all-plant-list-title")
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
                    ForEach(plants.filter({searchText.isEmpty ? true : $0.name.contains(searchText) || $0.type.contains(searchText)})) { item in
                        NavigationLink(destination: PlantDetailView(plant: item)) {
                            PlantRowView(plant: item)
                                .padding(.vertical, 5)
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

struct PlantListView_Previews: PreviewProvider {
    static var previews: some View {
        PlantListView()
            .previewLayout(.sizeThatFits)
    }
}
