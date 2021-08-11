//
//  DashboardView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/05.
//

import SwiftUI

struct DashboardView: View {
    var body: some View{
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 18) {
                VStack(alignment: .leading, spacing: 8) {
                    HStack{
                        Text("Greetings")
                            .font(Font.custom("Kollektif-Bold", size: 30))
                            .foregroundColor(.black)
                        Text("Dylan!")
                            .font(Font.custom("Kollektif-Bold", size: 30))
                            .foregroundColor(Color("Primary Green"))
                        Spacer()
                    }
                    .padding(EdgeInsets(.init(top: 10, leading: 35, bottom: 0, trailing: 35)))
                    
                    Text("Plantly Guide.")
                        .font(Font.custom("Kollektif", size: 20))
                        .foregroundColor(Color("Light Grey"))
                        .textCase(.lowercase)
                        .padding(EdgeInsets(.init(top: 00, leading: 35, bottom: 0, trailing: 35)))
                    
                    TipListView()
                    
                    
                }
                .frame(maxWidth: .infinity)
                .padding(EdgeInsets(.init(top: 30, leading: 0, bottom: 0, trailing: 0)))
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
