//
//  Models.swift
//  MySkills
//
//  Created by Artur Bilalov on 31.05.2022.
//

import UIKit

struct News: Decodable {
    
    struct Post: Decodable {
        let author, description, image: String
        var likes: Int
        var views: Int
        
        enum CodingKeys: String, CodingKey {
            case author, description, image, likes, views
        }
    }
    
    let posts: [Post]
}
