//
//  ContentView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/07/19.
//

import SwiftUI

//Content View
struct ContentView: View {
    
    //State var which sets index to default Dashboard
    @State var index = "Dashboard"
    //State show variable for menu items
    @State var show = false
    //Use app storage to remeber the currentPage
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
    
    //Show Menu Bool
    @Binding var show : Bool
    //Index for menu items
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
                .padding(.top, 0)
            }
            .padding(EdgeInsets(.init(top: 0, leading: 35, bottom: 10, trailing: 35)))
            ZStack {
                DashboardView().opacity(self.index == "Dashboard" ? 1 : 0)
                SettingsView().opacity(self.index == "Settings" ? 1 : 0)
                PlantListView().opacity(self.index == "All Plants" ? 1 : 0)
                FlowerPlantListView().opacity(self.index == "Flowering" ? 1 : 0)
                ConiferPlantListView().opacity(self.index == "Conifers" ? 1 : 0)
                FernPlantListView().opacity(self.index == "Ferns" ? 1 : 0)
                MossPlantListView().opacity(self.index == "Moss" ? 1 : 0)
            }
        }
        .background(Color.white)
        .cornerRadius(20.0)
    }
}

