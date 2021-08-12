//
//  CategoryItemView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/12.
//

import SwiftUI

struct CategoryItemView: View {
    
    var category: Category
    
    var body: some View {
        HStack() {
            VStack(alignment: .center, spacing: 25) {
                Image(category.image)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 130, alignment: .center)
                
                Text("\(category.category).")
                    .font(Font.custom("Kollektif-Bold", size: 18))
                    .foregroundColor(.white)
                    .textCase(.lowercase)
                    .frame(width: 140, height: .infinity, alignment: .leading)
                    .lineSpacing(3.0)
                    .padding(.top, 10)
            }
        }
        .frame(maxWidth: 210, maxHeight: 280)
        .background(Color("Primary Green"))
        .cornerRadius(40)
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: Categories[0])
            .previewLayout(.sizeThatFits)
    }
}
