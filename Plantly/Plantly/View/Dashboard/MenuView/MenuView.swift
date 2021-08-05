//
//  MenuView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/05.
//

import SwiftUI

struct MenuView: View {
    @State var index = "Dashboard"
    @State var show = false
    
    var body: some View {
        ZStack {
            (self.show ? Color("Primary Green") : Color.clear).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ZStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 25) {
                    HStack(spacing: 15) {
                        Image("profile-image")
                            .resizable()
                            .frame(width: 65, height: 65)
                            .padding(.leading, 20)
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Dylan da Silva")
                                .font(Font.custom("Kollektif-Bold", size: 20))
                                .foregroundColor(.white)
                            Text("South Africa, SA")
                                .font(Font.custom("Kollektif", size: 18))
                                .foregroundColor(Color("Dark Green"))
                        }
                        .padding(.leading, 5)
                    }
                    .padding(.bottom, 20)
                    ForEach(menuItems, id: \.self) { i in
                        Button(action: {
                            self.index = i
                            withAnimation(.spring()) {
                                self.show.toggle()
                            }
                        }) {
                            HStack {
                                Capsule()
                                    .fill(self.index == i ? Color.white : Color.clear)
                                    .frame(width: 5, height: 30)
                                    .padding(.leading, 20)
                                Text(i)
                                    .padding(.leading, 8)
                                    .textCase(.lowercase)
                                    .foregroundColor(.white)
                                    .font(Font.custom("Kollektif", size: 20))
                            }
                            .padding(.vertical, 5)
                        }
                    }
                    Spacer()
                }
                .padding(.leading)
                .padding(.top)
                .scaleEffect(self.show ? 1 : 0)
                
                ZStack(alignment: .topTrailing) {
                    MainView(show: self.$show, index: self.$index)
                        .scaleEffect(self.show ? 0.8 : 1)
                        .offset(x: self.show ? 150 : 0, y: self.show ? 50 : 0)
                        .disabled(self.show ? true : false)
                    Button(action: {
                        withAnimation(.spring()) {
                            self.show.toggle()
                        }
                    }) {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.white)
                            .padding(.trailing, 20)
                            .padding(.top, 10)
                    }
                    .padding()
                    .opacity(self.show ? 1 : 0)
                }
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

var menuItems = ["Dashboard", "Settings"]
