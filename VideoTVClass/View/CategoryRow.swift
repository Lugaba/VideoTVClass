//
//  CategoryRow.swift
//  VideoTVClass
//
//  Created by Luca Hummel on 12/04/22.
//

import SwiftUI

struct CategoryRow: View {
    var category: Category
    
    @State var showOnlyFavorites = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(category.title)
                .font(.headline)
                .bold()
                .padding(.leading, 20)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(alignment: .top) {
                    ForEach(showOnlyFavorites ? category.favoriteVideos : category.videos) { video in
                        NavigationLink(destination: VideoDetail(category: category, video: video)) {
                            VideoThumbnail(video: video)
                                .frame(maxWidth: 460)
                                .cornerRadius(10)
                                .padding()
                        }
                        .buttonStyle(TVButtonStyle())
                    }
                }
            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(category: Category(title: "Category2", videos: [
            Video(title: "Title2", descricao: "Description2", thumbnailName: "background"),
            Video(title: "Title3", descricao: "Description3", thumbnailName: "background")
        ]))
    }
}
