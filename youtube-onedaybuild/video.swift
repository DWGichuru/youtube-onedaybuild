//
//  video.swift
//  youtube-onedaybuild
//
//  Created by Duncan Gichuru on 2023-04-15.
//

import Foundation

struct Video : Decodable {
    
    var videoId = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    enum CodingKeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceId
        
        case videoId
        case title
        case description
        case thumbnail = "url"
        case published = "publishedAt"
        
    }
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        // Parse title, description and publish date
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        // Parse thumbnails
        let thumbnailsContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        let highContainer = try thumbnailsContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        // Parse videoid
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self , forKey: .resourceId)
        
        self.videoId = try resourceIdContainer.decode(String.self, forKey: .videoId)
              
    }
}
