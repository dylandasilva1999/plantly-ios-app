//
//  ContentView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/07/19.
//

import SwiftUI

//Content View
struct ContentView: View {
    
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Main View
struct MainView : View {
    
    @Binding var show : Bool
    @Binding var index : String
    
    var body: some View{
        VStack(spacing: 0) {
            ZStack {
                HStack {
                    Button(action: {
                        withAnimation(.spring()) {
                            self.show.toggle()
                        }
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
                .padding(.top, 20)
            }
            .padding(EdgeInsets(.init(top: 0, leading: 35, bottom: 0, trailing: 35)))
            ZStack {
                Dashboard().opacity(self.index == "Dashboard" ? 1 : 0)
                Settings().opacity(self.index == "Settings" ? 1 : 0)
            }
        }
        .background(Color.white)
        .cornerRadius(20.0)
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

//Settings View
struct Settings : View {
    var body: some View{
        GeometryReader{_ in
            VStack {
                Text("Settings")
            }
        }
    }
}

var menuItems = ["Dashboard", "Settings"]
