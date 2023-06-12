//
//  ReelsView.swift
//  ReelsOnBoardView
//
//  Created by Yery Castro on 9/3/23.
//

import SwiftUI
import AVKit

struct ReelsView: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            GeometryReader{ proxy in
                let size = proxy.size
                TabView{
                    ForEach(ModeloVideos){ item in
                        Player(url: item.url)
                            .rotationEffect(.init(degrees: -90))
                    }
                }
                .rotationEffect(.init(degrees: 90))
                .frame(width: size.height)
                .tabViewStyle(.page(indexDisplayMode: .always))
                .frame(width: size.width)
            }
        }
    }
}

struct Player: View{
    
    @State private var player = AVPlayer()
    var url: String
    
    var body: some View{
        VideoPlayer(player: player)
            .onAppear{
                player = AVPlayer(url: URL(string: url)!)
                player.play()
            }
    }
}
