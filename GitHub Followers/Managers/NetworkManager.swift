//
//  NetworkManager.swift
//  GitHub Followers
//
//  Created by Nada Yehia Dawoud on 3/16/20.
//  Copyright © 2020 Mobile Apps Kitchen. All rights reserved.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com"
    
    private init() {}
    
    
    func getFollowers(username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void) {
        let endpoint = baseURL + "/users/\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, "Invalid username. Please check again.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let _ = error {
                completed(nil, "Unable to complete your request. PLease check your internet connection.")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "Invalid response from server. PLease try again.")
                return
            }
            
            guard let data = data else {
                completed(nil, "Invalid data recieved from server. PLease try again.")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(followers, nil)
            } catch {
                completed(nil, "Invalid data recieved from server. PLease try again.")
            }
        }
        
        task.resume()
    }
}
