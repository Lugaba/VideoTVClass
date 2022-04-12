//
//  VideoDetail.swift
//  VideoTVClass
//
//  Created by Luca Hummel on 12/04/22.
//

import SwiftUI

struct VideoDetail: View {
    var category: Category
    var video: Video
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct VideoDetail_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetail(category: Category(title: "Category2", videos: [
            Video(title: "Title2", descricao: "Description2", thumbnailName: "background"),
            Video(title: "Title3", descricao: "Description3", thumbnailName: "background")
        ]), video: Video(title: "Title3", descricao: "Description3", thumbnailName: "background"))
    }
}
