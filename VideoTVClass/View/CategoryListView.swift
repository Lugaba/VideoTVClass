//
//  CategoryListView.swift
//  VideoTVClass
//
//  Created by Luca Hummel on 12/04/22.
//

import SwiftUI

struct CategoryListView: View {
    @ObservedObject var categoryProvider: CategoryProvider
    var categoryContext: CategoryProvider.ProviderContext
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(alignment: .leading) {
                ForEach(categoryProvider.categories) {
                    category in
                    CategoryRow(category: category, showOnlyFavorites: categoryContext == .favorites)
                }
            }
        }
        .onAppear {
            categoryProvider.refresh()
        }
    }
}

struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView(categoryProvider: CategoryProvider(dataProvider: DataProvider()), categoryContext: .general)
    }
}
