//
//  ContentView.swift
//  ReelsOnBoardView
//
//  Created by Yery Castro on 9/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            OnBoardView(image: "scribble.variable", title: "Scribe", desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation.")
            OnBoardView(image: "paintpalette.fill", title: "Colors", desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation.")
            OnBoardView(image: "dial.min.fill", title: "Picker", desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation.")
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        
    }
}

struct OnBoardView: View{
    
    var image: String
    var title: String
    var desc: String
    
    var body: some View{
        
        VStack(spacing: 20){
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(.teal)
            Text(title)
                .font(.title)
                .bold()
            Text(desc)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
        }.padding(.horizontal, 40)
        
    }
}
