//
//  myCollectionViewCell.swift
//  header and footer
//
//  Created by Karthiga on 13/03/24.
//

import UIKit

class myCollectionViewCell: UICollectionViewCell {

    
    static let identifier = "myCollectionViewCell"
    static func nib() -> UINib{
        UINib(nibName: "myCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .link
    }

}
