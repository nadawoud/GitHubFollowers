//
//  FollowersListViewController.swift
//  GitHub Followers
//
//  Created by Nada Yehia Dawoud on 2/22/20.
//  Copyright © 2020 Mobile Apps Kitchen. All rights reserved.
//

import UIKit

class FollowersListViewController: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
