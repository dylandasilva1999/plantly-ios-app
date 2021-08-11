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
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        
        if currentPage > totalPages {
            MenuView()
        } else {
            OnboardingView()
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
                DashboardView().opacity(self.index == "Dashboard" ? 1 : 0)
                SettingsView().opacity(self.index == "Settings" ? 1 : 0)
            }
        }
        .background(Color.white)
        .cornerRadius(20.0)
    }
}

