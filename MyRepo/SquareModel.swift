//
//  SquareModel.swift
//  MyRepo
//
//  Created by Azhar Islam on 22/11/2019.
//  Copyright © 2019 Azhar Islam. All rights reserved.
//

import Foundation

struct Square: Decodable {
    let square: [SquareInfo]
}

struct SquareInfo: Codable {
    var id: Int
    var repoName: String
    var description: String?
    var isPrivate: Bool
    var stargazers: Int
    var forks: Int
    var language: String?
    var openIssues: Int
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case repoName = "name"
        case description = "description"
        case isPrivate = "private"
        case stargazers = "stargazers_count"
        case openIssues = "open_issues_count"
        case language = "language"
        case forks = "forks_count"
    }
    
}
