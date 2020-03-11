//
//  User.swift
//  GitHub Followers
//
//  Created by Nada Yehia Dawoud on 3/11/20.
//  Copyright © 2020 Mobile Apps Kitchen. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRebos: Int
    var publicGists: Int
    var htmlUrl: String
    var folowing: Int
    var followers: Int
    var createdAt: String
}
