//
//  HeaderCollectionReusableView.swift
//  header and footer
//
//  Created by Karthiga on 13/03/24.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
        static let iditifier = "HeaderCollectionReusableView"
    private let label:  UILabel = {
        let label = UILabel()
        label.text = "head"
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    public func configure(){
        backgroundColor = .systemGreen
        addSubview(label)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
}
class FooterCollectionReusableView: UICollectionReusableView {
        static let iditifier = "FooterCollectionReusableView"
    private let label:  UILabel = {
        let label = UILabel()
        label.text = "footer"
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    public func configure(){
        backgroundColor = .systemRed
        addSubview(label)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
}
