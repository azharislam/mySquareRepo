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

struct SquareInfo: Decodable {
    let id: Int
    let repoName: String
    let isPrivate: Bool
    let stargazers: Int
    let forks: Int
    let language: String
    let openIssues: Int
    
}
