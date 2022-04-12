//
//  Category.swift
//  VideoTVClass
//
//  Created by Luca Hummel on 12/04/22.
//

import Foundation

class Category: Identifiable {
    var id = UUID()
    var title: String
    var videos: [Video]
    
    var favoriteVideos: [Video] {
        return videos.filter { video in
            return video.favorite
        }
    }
    
    init(title: String, videos: [Video]) {
        self.title = title
        self.videos = videos
    }
}
