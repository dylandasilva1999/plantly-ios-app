//
//  CategoryItemView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/12.
//

import SwiftUI

struct CategoryItemView: View {
    var body: some View {
        HStack() {
            VStack(alignment: .leading, spacing: 25) {
                Image("plant-tips")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 30, alignment: .leading)
                
                Text("Hello")
                    .font(Font.custom("Kollektif", size: 20))
                    .foregroundColor(.white)
                    .textCase(.lowercase)
                    .frame(width: 170, height: .infinity, alignment: .leading)
                    .lineSpacing(3.0)
            }
            .padding(EdgeInsets(.init(top: 0, leading: 120, bottom: 0, trailing: 0)))
        }
        .frame(maxWidth: 300, maxHeight: 190)
        .background(Color("Primary Green"))
        .cornerRadius(25.0)
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView()
            .previewLayout(.sizeThatFits)
    }
}
