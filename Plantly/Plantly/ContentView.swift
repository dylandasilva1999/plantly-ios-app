//
//  ContentView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Main View
struct MainView : View {
    var body: some View{
        VStack(spacing: 0) {
            ZStack {
                HStack {
                    Button(action: {
                    }) {
                        Image("menu-icon")
                            .resizable()
                            .frame(width: 30, height: 20)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                    }) {
                        Image("circle-icon")
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                }
            }
            .padding(EdgeInsets(.init(top: 10, leading: 35, bottom: 0, trailing: 35)))
            
            ZStack {
                Dashboard()
            }
        }
    }
}

//Dashboard View
struct Dashboard : View {
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
