//
//  VideoThumbnail.swift
//  VideoTVClass
//
//  Created by Luca Hummel on 12/04/22.
//

import SwiftUI

struct VideoThumbnail: View {
    var video: Video
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(video.thumbnailName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 450, height: 255)
                .clipped()
                .cornerRadius(10)
                .shadow(radius: 5)
            Text(video.title)
                .foregroundColor(.primary)
                .font(.headline)
                .bold()
            Text(video.descricao)
                .foregroundColor(.secondary)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height: 80)
        }
    }
}

struct VideoThumbnail_Previews: PreviewProvider {
    static var previews: some View {
        VideoThumbnail(video: Video(title: "Title1", descricao: "Description1", thumbnailName: "background"))
    }
}
