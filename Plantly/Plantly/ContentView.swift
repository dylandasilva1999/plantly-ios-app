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
                .font(.system(size: 60))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
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
