//
//  GFError.swift
//  GitHub Followers
//
//  Created by Nada Yehia Dawoud on 3/17/20.
//  Copyright © 2020 Mobile Apps Kitchen. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername  = "Invalid username. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse  = "Invalid response from the server. Please try again."
    case invalidData      = "Data received from the server was invalid. Please try again."
}
