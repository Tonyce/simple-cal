//
//  MonthCollectionViewCell.swift
//  calendar
//
//  Created by D_ttang on 15/11/30.
//  Copyright © 2015年 D_ttang. All rights reserved.
//

import UIKit

class MonthCollectionViewCell: UICollectionViewCell {

    
    var superViewController: ViewController?
    var superHeight: CGFloat? {
        didSet {
                    self.superViewController?.monthHeight.constant = self.superHeight!
        }
    }
    var monthDay = [] {
        didSet {
            self.monthDayCollection.reloadData()
        }
    }

    @IBOutlet weak var monthDayCollection: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        monthDayCollection.dataSource = self
        monthDayCollection.delegate = self
        self.monthDayCollection.registerNib(UINib(nibName: "DayCell", bundle: nil), forCellWithReuseIdentifier: "dayCell")

         print(self.frame.height)
    }
    
    
    
    override func willTransitionFromLayout(oldLayout: UICollectionViewLayout, toLayout newLayout: UICollectionViewLayout) {
//        self.superViewController?.monthHeight.constant = self.superHeight!
    }
    
//    override func didTransitionFromLayout(oldLayout: UICollectionViewLayout, toLayout newLayout: UICollectionViewLayout) {
//        self.superViewController?.monthHeight.constant = self.superHeight!
//        UIView.animateWithDuration(1.0) { () -> Void in
//            self.superViewController?.view.layoutIfNeeded()
//        }
//    }
    

}

extension MonthCollectionViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    
//    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
//        return 5
//    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return monthDay.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("dayCell", forIndexPath: indexPath) as! DayCell
        if indexPath.row < monthDay.count {
            cell.dayLabel.text = "\(monthDay[indexPath.row])"
        }
        return cell
    }
}
