//
//  Modelo.swift
//  ReelsOnBoardView
//
//  Created by Yery Castro on 9/3/23.
//

import Foundation

struct Modelo: Identifiable {
    var id = UUID().uuidString
    var url : String
    var title : String
    
    
}

var ModeloVideos = [
    Modelo(url: "https://player.vimeo.com/external/425864361.sd.mp4?s=2c7fec7c5b41b0350c19f936d3ca50b6931e6bab&profile_id=165&oauth2_token_id=57447761", title: "reel 1"),
    Modelo(url: "https://player.vimeo.com/external/479728625.hd.mp4?s=84b5a866b5b24de0e1d3bc20fbd0a98d544bda93&profile_id=174&oauth2_token_id=57447761", title: "reel 2"),
    Modelo(url: "https://player.vimeo.com/external/505557796.hd.mp4?s=11bb279ddf18533b56a8c3d858f2ddee0cb5e8aa&profile_id=173&oauth2_token_id=57447761", title: "reel 3"),
]

