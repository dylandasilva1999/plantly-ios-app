//
//  OnboardingView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/05.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    var body: some View {
        ZStack(alignment: .top) {
            
            if currentPage == 1 {
                OnboardingScreenView(title: "Get educated.", detail: "Not sure which nutrients your plants need? Our library of plants will assist you.", image: "educated-image")
            }
            if currentPage == 2 {
                OnboardingScreenView(title: "Easy & Intuitive.", detail: "Find plants in the library that contains the four different categories of plants.", image: "intuitive-image")
            }
            if currentPage == 3 {
                OnboardingScreenView(title: "Search Friendly.", detail: "Have a plant in mind? Search for a plant using the built-in search system.", image: "search-friendly-image")
            }
        }
        .padding(.bottom, 0)
        .overlay(
            Button(action: {
                withAnimation(.easeInOut) {
                    if currentPage <= totalPages {
                        currentPage += 1
                    }
                    if currentPage == 3 {
                        isOnboarding = false
                    }
                }
            }, label: {
                Image(systemName: "chevron.right")
                    .font(.system(size: 25, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(width: 70, height: 70)
                    .background(Color("Primary Green"))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        ZStack {
                            Circle()
                                .stroke(Color("Primary Green").opacity(0.1), lineWidth: 3)
                            Circle()
                                .trim(from: 0, to: CGFloat(currentPage) / CGFloat(totalPages))
                                .stroke(Color("Primary Green"), lineWidth: 3)
                                .rotationEffect(.init(degrees: -90))
                        }
                        .padding(-15)
                    )
                    .padding(.top, 680)
                
            })
        )
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

var totalPages = 3
