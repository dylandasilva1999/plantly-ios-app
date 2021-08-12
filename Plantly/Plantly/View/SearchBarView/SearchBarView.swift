//
//  SearchBarView.swift
//  Plantly
//
//  Created by Dylan da Silva on 2021/08/12.
//

import SwiftUI

//Search Bar View
struct SearchBarView: View {
    
    //Binding var for the text input in search
    @Binding var searchText: String
    //Binding var if the user is searching
    @Binding var isSearching: Bool
    
    var body: some View {
        HStack {
            TextField("Search for plants here", text: $searchText)
                .padding(.leading, 40)
                .foregroundColor(.black)
        }
        .padding(15)
        .background(Color("Muted Green"))
        .cornerRadius(50)
        .onTapGesture ( perform: {
            isSearching = false
        })
        .overlay(
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color("Primary Green"))
                Spacer()
                
                if isSearching {
                    Button(action: {
                        searchText = ""
                    }, label: {
                        Image(systemName: "mark.circle.fill")
                            .padding(.vertical)
                    })
                }
            }
            .padding(.horizontal, 30)
        )
        .transition(.move(edge: .trailing))
        .animation(.spring())
        
        if isSearching {
            Button(action: {
                isSearching = false
                searchText = ""
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }, label: {
                Text("Cancel")
                    .padding(.trailing)
                    .padding(.leading, 0)
                    .font(Font.custom("Kollektif", size: 18))
                    .foregroundColor(Color("Primary Green"))
            })
            .transition(.move(edge: .trailing))
            .animation(.spring())
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchText: .constant(""), isSearching: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}
