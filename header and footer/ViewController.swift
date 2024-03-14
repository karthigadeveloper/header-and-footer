//
//  ViewController.swift
//  header and footer
//
//  Created by Karthiga on 13/03/24.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var collectionview: UICollectionView?
    

   override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
       
        layout.scrollDirection = .vertical
        
    layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        layout.itemSize = CGSize(width: view.frame.size.width/2.2, height: view.frame.size.width/2.2)
        collectionview = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionview?.register(myCollectionViewCell.nib(), forCellWithReuseIdentifier: myCollectionViewCell.identifier)
        collectionview?.register(HeaderCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.iditifier)
       collectionview?.register(FooterCollectionReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: FooterCollectionReusableView.iditifier)
        collectionview?.delegate = self
        collectionview?.dataSource = self
        collectionview?.backgroundColor = .white
                
        view.addSubview(collectionview!)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionview?.frame = view.bounds
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview?.dequeueReusableCell(withReuseIdentifier: myCollectionViewCell.identifier, for: indexPath)
        return cell!
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionView.elementKindSectionFooter{
            let footer = collectionview?.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: FooterCollectionReusableView.iditifier, for: indexPath) as! FooterCollectionReusableView
            footer.configure()
            return footer
            
        }
        
        let header = collectionview?.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCollectionReusableView.iditifier, for: indexPath) as! HeaderCollectionReusableView
        header.configure()
        return header
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
}

