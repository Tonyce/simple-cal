//
//  MonthFlowLayout.swift
//  calendar
//
//  Created by D_ttang on 15/11/30.
//  Copyright © 2015年 D_ttang. All rights reserved.
//

import UIKit

class MonthFlowLayout: UICollectionViewFlowLayout {
    //    let itemSize = CGSize(width: 133, height: 173)
    override func prepareLayout() {
        super.prepareLayout()

//        self.collectionView?.frame.size.height = self.itemSize.height
//        self.itemSize = CGSizeMake((self.collectionView?.frame.width)!, (self.collectionView?.frame.height)!)
//        self.view.frame.width / 7 * 5 + 5
        self.scrollDirection = UICollectionViewScrollDirection.Horizontal
        self.minimumLineSpacing = 0
        self.minimumInteritemSpacing = 0
    }
}
