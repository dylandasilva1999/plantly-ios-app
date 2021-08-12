//
//  PlantDetailView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/11.
//

import SwiftUI

struct PlantDetailView: View {
    
    var plant: Plant
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                Image(plant.image)
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: .infinity, height: 500, alignment: .top)

                VStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50, style: .continuous)
                            .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width, height: 540, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.top, 360)
                        VStack(alignment: .leading, spacing: 20) {
                            Text(plant.name)
                                .font(Font.custom("Kollektif-Bold", size: 26))
                                .foregroundColor(Color("Primary Green"))
                                .textCase(.lowercase)
                            Text(plant.description)
                                .font(Font.custom("Kollektif", size: 18))
                                .foregroundColor(.black)
                                .lineSpacing(3)
                            HStack {
                                GroupBox(label:
                                        Text("Type")
                                            .font(Font.custom("Kollektif-Bold", size: 16))
                                            .foregroundColor(Color("Primary Green"))
                                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                            .padding(.leading, 25)
                                            .padding(.top, 18),
                                         content: { HStack {
                                            Text(plant.type)
                                               .font(Font.custom("Kollektif", size: 15))
                                               .foregroundColor(Color("Primary Green"))
                                               .padding(.top, 20)
                                               .padding(.leading, 4)
                                               .textCase(.lowercase)
                                            Spacer()
                                         }
                                })
                                .frame(width: 150, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(20)
                                .groupBoxStyle(PlantDetailGroupBox())
                                
                                GroupBox(label:
                                        Text("LIGHT")
                                            .font(Font.custom("Kollektif-Bold", size: 16))
                                            .foregroundColor(Color("Primary Green"))
                                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                            .padding(.leading, 26)
                                            .padding(.top, 18),
                                         content: { HStack {
                                            Text(plant.light)
                                                .font(Font.custom("Kollektif", size: 15))
                                                .foregroundColor(Color("Primary Green"))
                                                .padding(.top, 20)
                                                .padding(.leading, 4)
                                                .textCase(.lowercase)
                                            Spacer()
                                         }
                                })
                                .frame(width: .infinity, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding(.leading, 5)
                                .cornerRadius(20)
                                .groupBoxStyle(PlantDetailGroupBox())
                            }
                            VStack {
                                GroupBox(label:
                                        Text("Propagation")
                                            .font(Font.custom("Kollektif-Bold", size: 16))
                                            .foregroundColor(Color("Primary Green"))
                                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                            .padding(.leading, 25)
                                            .padding(.top, 18),
                                         content: { HStack {
                                            Text(plant.propagation)
                                               .font(Font.custom("Kollektif", size: 15))
                                               .foregroundColor(Color("Primary Green"))
                                               .padding(.top, 20)
                                               .padding(.leading, 4)
                                               .textCase(.lowercase)
                                            Spacer()
                                         }
                                })
                                    .frame(width: .infinity, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(20)
                                .groupBoxStyle(PlantDetailGroupBox())
                                
                                Button(action: {
                                    
                                }) {
                                    HStack {
                                        Text("Go Back")
                                            .font(Font.custom("Kollektif", size: 22))
                                            .foregroundColor(.white)
                                            .textCase(.lowercase)
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(25)
                                    .background(Color("Primary Green"))
                                    .cornerRadius(20)
                                }
                                .padding(.top, 35)
                            }
                        }
                        .frame(width: 320, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.top, 320)
                    }
                }
            }
            Spacer()
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct PlantDetailGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .frame(maxWidth: .infinity)
            .padding(20)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color("Muted Green")))
            .overlay(configuration.label.padding(.leading, 0), alignment: .topLeading)
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: Plants[1])
    }
}
