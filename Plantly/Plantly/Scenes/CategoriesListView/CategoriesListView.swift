//
//  CategoriesListView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/12.
//

import SwiftUI

struct CategoriesListView: View {
    
    var categories: [Category] = Categories
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack() {
                    ForEach(categories) { item in
                            CategoryItemView(category: item)
                                .padding(.vertical, 5)
                    }
                }
            }
        }
    }
}

struct CategoriesListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesListView()
    }
}
