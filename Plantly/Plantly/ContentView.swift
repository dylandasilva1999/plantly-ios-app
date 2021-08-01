//
//  ContentView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack() {
            Color("Primary Green")
                .ignoresSafeArea()
            Text("plantly.")
                .font(Font.custom("Kollektif-Bold", size: 60))
                .foregroundColor(.white)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
