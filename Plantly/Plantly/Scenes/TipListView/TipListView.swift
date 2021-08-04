//
//  TipListView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/04.
//

import SwiftUI

struct TipListView: View {
    
    var tips: [Tip] = Tips
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(tips.shuffled()) { item in
                    GeometryReader { geometry in
                        TipRowView(tip: item)
                            .rotation3DEffect(Angle(degrees:
                                                        (Double(geometry.frame(in: .global).minX) - 40) / -20
                            ), axis: (x: 0.0, y: 10.0, z: 0.0))
                    }
                    .frame(width: 290, height: 190, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
            }
            .padding(EdgeInsets(.init(top: 20, leading: 30, bottom: 0, trailing: 0)))
        }
    }
}

struct TipListView_Previews: PreviewProvider {
    static var previews: some View {
        TipListView()
    }
}
