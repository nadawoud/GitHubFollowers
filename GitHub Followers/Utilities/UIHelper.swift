//
//  UIHelper.swift
//  GitHub Followers
//
//  Created by Nada Yehia Dawoud on 3/26/20.
//  Copyright © 2020 Mobile Apps Kitchen. All rights reserved.
//

import UIKit

struct UIHelper {
    
    static func createThreeColmunFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minmumItemSpacing: CGFloat = 10
        let availableWidth = width - (padding * 2) - (minmumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
    }
}