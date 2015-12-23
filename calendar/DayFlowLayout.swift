//
//  DayFlowLayout.swift
//  calendar
//
//  Created by D_ttang on 15/11/30.
//  Copyright © 2015年 D_ttang. All rights reserved.
//

import UIKit

class DayFlowLayout: UICollectionViewFlowLayout {
    //    let itemSize = CGSize(width: 133, height: 173)
    override func prepareLayout() {
        super.prepareLayout()
        
        //print(self.collectionView?.frame.width)
        
        
        //print((self.collectionView?.frame.width)! / 7)
        let padding = ((self.collectionView?.frame.width)! - 10) / 7
        
        self.sectionInset = UIEdgeInsets(top: 1, left: 5, bottom: 1, right: 5)
        
        self.itemSize = CGSizeMake(padding, padding)
        //        self.scrollDirection = UICollectionViewScrollDirection.Horizontal
        self.minimumLineSpacing = 0
        
        self.minimumInteritemSpacing = 0
    }
}