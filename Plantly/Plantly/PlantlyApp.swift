//
//  PlantlyApp.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/07/19.
//

import SwiftUI

@main
struct PlantlyApp: App {
    
    //App storage to remember if user has done the onboarding
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
