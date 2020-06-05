//
//  UIView+snp.swift
//  23
//
//  Created by xiaoyao on 2020/5/27.
//  Copyright © 2020 ddcx. All rights reserved.
//

import Foundation

#if canImport(Kingfisher)
import Kingfisher

public extension LinkerWarper where Base : UIImageView {
    @discardableResult
    func setImage(with resource: Resource?, placeholder: Placeholder? = UIImage(named: "place_holder.pdf"), options: KingfisherOptionsInfo? = nil, progressBlock: DownloadProgressBlock? = nil, completionHandler: ((Result<RetrieveImageResult, KingfisherError>) -> Void)? = nil) -> Self {
        base.kf.setImage(with: resource, placeholder: placeholder, options: options, progressBlock: progressBlock, completionHandler: completionHandler)
        return self
    }
    
    @discardableResult
    func setImage(_ url: String, placeholder: UIImage? = nil) -> Self {
        return setImage(with: URL(string: url), placeholder: placeholder)
    }
}

extension LinkerWarper where Base : UIButton {
    @discardableResult
    func setImage(
        with resource: Resource?,
        for state: UIControl.State,
        placeholder: UIImage? = nil,
        options: KingfisherOptionsInfo? = nil,
        progressBlock: DownloadProgressBlock? = nil,
        completionHandler: ((Result<RetrieveImageResult, KingfisherError>) -> Void)? = nil) -> Self
    {
        base.kf.setImage(
            with: resource?.convertToSource(),
            for: state,
            placeholder: placeholder,
            options: options,
            progressBlock: progressBlock,
            completionHandler: completionHandler)
        return self
    }
}
#endif
