//
//  Video.swift
//  VideoTVClass
//
//  Created by Luca Hummel on 12/04/22.
//

import Foundation

class Video: Identifiable, Equatable, ObservableObject {
    var id = UUID()
    var title: String
    var descricao: String
    var thumbnailName: String
    
    @Published var favorite = false
    
    init(title: String, descricao: String, thumbnailName: String) {
        self.title = title
        self.descricao = descricao
        self.thumbnailName = thumbnailName
    }
    
    static func == (lhs: Video, rhs: Video) -> Bool {
        return lhs.id == rhs.id
    }
}
