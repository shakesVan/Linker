//
//  Cell+identify.swift
//  23
//
//  Created by xiaoyao on 2020/4/21.
//  Copyright © 2020 ddcx. All rights reserved.
//

import Foundation


extension UICollectionReusableView {
    public static var identifier: String {
        return String(type(of: Self()).description()
        .split(separator: ".").last ?? "")
    }
}

public extension UICollectionView {
    enum Kind: String {
        case non = "NON"
        case head = "UICollectionElementKindSectionHeader"
        case foot = "UICollectionElementKindSectionFooter"
        case cell = "Cell"
    }
    func registerNibCell(_ identifier: String, _ nibName: String? = nil) {
        register(UINib.init(nibName: nibName ?? identifier, bundle: Bundle.main), forCellWithReuseIdentifier: identifier)
    }
    
    func registerNameCell(_ cellClass: UICollectionViewCell.Type) {
        register(cellClass, forCellWithReuseIdentifier: cellClass.identifier)
    }
    
    
    func registerNibKind(_ identifier: String,_ kind: UICollectionView.Kind, _ nibName: String? = nil) {
        register(UINib.init(nibName: nibName ?? identifier, bundle: Bundle.main),
                 forSupplementaryViewOfKind: kind.rawValue, withReuseIdentifier: identifier)
        
    }
    
    func registerNameKind(_ viewClass: UICollectionReusableView.Type,_ kind: UICollectionView.Kind) {
        register(viewClass, forSupplementaryViewOfKind: kind.rawValue,
                 withReuseIdentifier: viewClass.identifier)
        
    }
    
    func dequeueReusableSupplementaryView(ofKind kind: UICollectionView.Kind, withReuseIdentifier identifier: String, for indexPath: IndexPath) -> UICollectionReusableView {
        return dequeueReusableSupplementaryView(ofKind: kind.rawValue, withReuseIdentifier: identifier, for: indexPath)
    }
}
