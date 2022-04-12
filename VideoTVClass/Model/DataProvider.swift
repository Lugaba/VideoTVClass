//
//  DataProvider.swift
//  VideoTVClass
//
//  Created by Luca Hummel on 12/04/22.
//

import Foundation

class DataProvider: ObservableObject {
    @Published var categories: [Category] = []
    
    var categoriesWithFavoriteVideos: [Category] {
        return categories.filter { category in
            return !(category.favoriteVideos.isEmpty)
        }
    }
    
    init() {
        categories = [
            Category(title: "Category1", videos: [
                Video(title: "Title1", descricao: "Description1", thumbnailName: "background")
            ]),
            Category(title: "Category2", videos: [
                Video(title: "Title2", descricao: "Description2", thumbnailName: "background"),
                Video(title: "Title3", descricao: "Description3", thumbnailName: "background")
            ]),
            Category(title: "Category3", videos: [
                Video(title: "Title4", descricao: "Description4", thumbnailName: "background"),
                Video(title: "Title5", descricao: "Description5", thumbnailName: "background")
            ]),
            Category(title: "Category4", videos: [
                Video(title: "Title6", descricao: "Description6", thumbnailName: "background"),
                Video(title: "Title7", descricao: "Description7", thumbnailName: "background"),
                Video(title: "Title8", descricao: "Description8", thumbnailName: "background"),
                Video(title: "Title9", descricao: "Description9", thumbnailName: "background")
            ])
        ]
    }
}
