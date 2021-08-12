//
//  OnboardingScreenView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/05.
//

import SwiftUI

struct OnboardingScreenView: View {
    
    //Variables used in each screen of onboarding
    var title: String
    var detail: String
    var image: String
    
    //App storage for holding current page value
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        VStack(spacing: 10) {
            ZStack {
                HStack {
                    if currentPage == 1 {
                        Text("Welcome!")
                            .font(Font.custom("Kollektif-Bold", size: 25))
                            .foregroundColor(.white)
                            .padding(.top, 0)
                    } else {
                        Button(action: {
                            withAnimation(.easeInOut) {
                                currentPage -= 1
                            }
                        }, label: {
                            Image(systemName: "chevron.left")
                                .foregroundColor(Color("Primary Green"))
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                                .background(Color.white)
                                .cornerRadius(10)
                        })
                    }
                    Spacer()
                    Button(action: {
                        withAnimation(.easeInOut) {
                            currentPage = 4
                        }
                    }, label: {
                        Text("skip")
                            .font(Font.custom("Kollektif", size: 22))
                            .foregroundColor(.white)
                    })
                }
                .padding(30.0)
            }
            .foregroundColor(.black)
            .padding(0.0)
            .background(
                Image(image)
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: 520, alignment: .center)
                    .padding(.top, 420)
            )
            
            Spacer()
            
            VStack(spacing: 15) {
                Text(title)
                    .font(Font.custom("Kollektif-Bold", size: 32))
                    .foregroundColor(Color("Primary Green"))
                    .padding(.top, 0)
                
                Text(detail)
                    .font(Font.custom("Kollektif", size: 22))
                    .foregroundColor(Color("Dark Grey"))
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .lineSpacing(3)
            }
            .padding(.top, 280)
            
            Spacer()
        }
    }
}

struct OnboardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreenView(title: "Get Educated.", detail: "Not sure which nutrients your plants need? Our library of plants will assist you.", image: "educated-image")
    }
}
