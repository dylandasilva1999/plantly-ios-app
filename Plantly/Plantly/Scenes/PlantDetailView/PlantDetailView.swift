//
//  PlantDetailView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/11.
//

import SwiftUI

struct PlantDetailView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
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
                            .frame(width: UIScreen.main.bounds.width, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                                .groupBoxStyle(PlantDetailGroupBoxMuted())
                                
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
                                .groupBoxStyle(PlantDetailGroupBoxMuted())
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
                                    .padding(.top, -6)
                                .groupBoxStyle(PlantDetailGroupBoxMuted())
                                
                                GroupBox(label:
                                        Text("Scientific Name")
                                            .font(Font.custom("Kollektif-Bold", size: 16))
                                            .foregroundColor(.white)
                                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                                            .padding(.leading, 25)
                                            .padding(.top, 18),
                                         content: { HStack {
                                            Text(plant.scientificName)
                                               .font(Font.custom("Kollektif", size: 15))
                                                .foregroundColor(.white)
                                               .padding(.top, 20)
                                               .padding(.leading, 4)
                                               .textCase(.lowercase)
                                            Spacer()
                                         }
                                })
                                .frame(width: .infinity, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(20)
                                    .padding(.top, 6)
                                .groupBoxStyle(PlantDetailGroupBoxGreen())
                            }
                        }
                        .frame(width: 320, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.top, 360)
                    }
                }
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct PlantDetailGroupBoxMuted: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .frame(maxWidth: .infinity)
            .padding(20)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color("Muted Green")))
            .overlay(configuration.label.padding(.leading, 0), alignment: .topLeading)
    }
}

struct PlantDetailGroupBoxGreen: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .frame(maxWidth: .infinity)
            .padding(20)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color("Primary Green")))
            .overlay(configuration.label.padding(.leading, 0), alignment: .topLeading)
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: Plants[1])
    }
}
