//
//  PlantRowView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/01.
//

import SwiftUI

struct PlantRowView: View {
    
    var plant: Plant
    
    var body: some View {
        HStack(spacing: 20) {
            Image(plant.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 100, alignment: .leading)
                .cornerRadius(15.0)
                .padding(5.0)
            
            VStack(alignment: .leading, spacing: 12) {
                Text("\(plant.name).")
                    .font(Font.custom("Kollektif-Bold", size: 20))
                    .foregroundColor(.white)
                    .textCase(.lowercase)
                
                Text(plant.description)
                    .font(Font.custom("Kollektif", size: 13))
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
                
                
                Text("type: \(plant.type)")
                    .font(Font.custom("Kollektif", size: 13))
                    .foregroundColor(Color("Dark Green"))
            }
        }
        .frame(width: .infinity, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .padding(20.0)
        .background(Color("Primary Green"))
        .cornerRadius(20.0)
    }
}

struct PlantRowView_Previews: PreviewProvider {
    static var previews: some View {
        PlantRowView(plant: Plants[0])
            .previewLayout(.sizeThatFits)
    }
}
