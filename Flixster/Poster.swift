//
//  Poster.swift
//  Flixster
//
//  Created by Sahara Farah Abdi on 3/12/23.
//

import Foundation
struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let poster_path: URL
}
