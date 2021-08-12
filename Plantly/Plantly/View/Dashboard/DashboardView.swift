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
                VStack(alignment: .leading, spacing: 0) {
                    HStack{
                        Text("Greetings")
                            .font(Font.custom("Kollektif-Bold", size: 30))
                            .foregroundColor(.black)
                        Text("Dylan!")
                            .font(Font.custom("Kollektif-Bold", size: 30))
                            .foregroundColor(Color("Primary Green"))
                        Spacer()
                    }
                    .padding(EdgeInsets(.init(top: 0, leading: 35, bottom: 0, trailing: 35)))
                    
                    TipListView()
                        .padding(.leading, 5)
                    
                    VStack(spacing: 20) {
                        HStack {
                            Text("Categories")
                                .font(Font.custom("Kollektif-Bold", size: 30))
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                            Spacer()
                            Text("View in menu")
                                .font(Font.custom("Kollektif", size: 18))
                                .foregroundColor(Color("Light Grey"))
                                .multilineTextAlignment(.center)
                                .textCase(.lowercase)
                        }
                        HStack {
                            HStack() {
                                VStack(alignment: .center, spacing: 25) {
                                    Image("flower-category")
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 100, alignment: .center)
                                    
                                    Text("Flowering Plants.")
                                        .font(Font.custom("Kollektif-Bold", size: 16))
                                        .foregroundColor(.white)
                                        .textCase(.lowercase)
                                        .frame(width: 120, height: 40, alignment: .leading)
                                        .lineSpacing(3.0)
                                        .padding(.leading, 20)
                                }
                            }
                            .frame(maxWidth: 160, maxHeight: 210)
                            .background(Color("Primary Green"))
                            .cornerRadius(40)
                            
                            Spacer()
                            
                            HStack() {
                                VStack(alignment: .center, spacing: 10) {
                                    Image("conifer-category")
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 120, height: 120, alignment: .center)
                                    
                                    Text("conifers, cycads and allies")
                                        .font(Font.custom("Kollektif-Bold", size: 16))
                                        .foregroundColor(.white)
                                        .textCase(.lowercase)
                                        .frame(width: 122, height: 40, alignment: .leading)
                                        .lineSpacing(3.0)
                                        .padding(.top, 0)
                                    
                                }
                            }
                            .frame(maxWidth: 160, maxHeight: 210)
                            .background(Color("Primary Green"))
                            .cornerRadius(40)
                        }
                        HStack {
                            HStack() {
                                VStack(alignment: .center, spacing: 10) {
                                    Image("fern-category")
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 100, alignment: .center)
                                        .padding(.top, 10)
                                    
                                    Text("ferns, and fern allies.")
                                        .font(Font.custom("Kollektif-Bold", size: 16))
                                        .foregroundColor(.white)
                                        .textCase(.lowercase)
                                        .frame(width: 140, height: 40, alignment: .leading)
                                        .lineSpacing(3.0)
                                        .padding(.top, 10)
                                        .padding(.leading, 30)
                                }
                            }
                            .frame(maxWidth: 160, maxHeight: 210)
                            .background(Color("Primary Green"))
                            .cornerRadius(40)
                            .onTapGesture {
                                print("Fern Clicked")
                            }
                            
                            Spacer()
                            
                            HStack() {
                                VStack(alignment: .center, spacing: 10) {
                                    Image("moss-category")
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 100, height: 100, alignment: .center)
                                        .padding(.top, 10)
                                    
                                    Text("mosses and hornworts.")
                                        .font(Font.custom("Kollektif-Bold", size: 16))
                                        .foregroundColor(.white)
                                        .textCase(.lowercase)
                                        .frame(width: 140, height: 40, alignment: .leading)
                                        .lineSpacing(3.0)
                                        .padding(.top, 10)
                                        .padding(.leading, 30)
                                }
                            }
                            .frame(maxWidth: 160, maxHeight: 210)
                            .background(Color("Primary Green"))
                            .cornerRadius(40)
                        }
                    }
                    .padding(EdgeInsets(.init(top: 0, leading: 35, bottom: 0, trailing: 35)))
                    .frame(height: 500)
                }
                .frame(maxWidth: .infinity)
                .padding(EdgeInsets(.init(top: 20, leading: 0, bottom: 0, trailing: 0)))
            }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
