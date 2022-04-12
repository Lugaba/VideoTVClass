//
//  CategoryProvider.swift
//  VideoTVClass
//
//  Created by Luca Hummel on 12/04/22.
//

import Foundation

class CategoryProvider: ObservableObject {
    @Published var categories: [Category] = []
    
    var currentContext: ProviderContext = .general
    var dataProvider: DataProvider
    
    init(dataProvider: DataProvider) {
        self.dataProvider = dataProvider
    }
    
    enum ProviderContext: Equatable {
        case general, favorites
        
        var formattedName: String {
            switch self {
            case .general:
                return "All Videos"
            case .favorites:
                return "Favorites"
            }
        }
        
        var missingCategoryTitle: String {
            if self == .general {
                return "Não achei os vídeos..."
            } else {
                return "Você não favoritou um vídeo..."
            }
        }
    }
    
    func refresh() {
        switch currentContext {
        case .general:
            categories = dataProvider.categories
        case .favorites:
            categories = dataProvider.categoriesWithFavoriteVideos
        }
    }
}


