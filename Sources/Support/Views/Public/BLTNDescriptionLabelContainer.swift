//
//  BLTNDescriptionLabelContainer.swift
//  BLTNBoard
//
//  Created by Jack Chen on 9/6/19.
//  Copyright © 2019 Bulletin. All rights reserved.
//

import UIKit

/**
 * A view that contains a description label.
 */

@objc public class BLTNDescriptionLabelContainer: UIView {
    
    /// The label contained in the view.
    @objc public let label: UILabel
    
    // MARK: - Initialization
    
    @objc init(label: UILabel, horizontalInset: CGFloat) {
        self.label = label
        super.init(frame: .zero)
        configureSubviews(horizontalInset: horizontalInset)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSubviews(horizontalInset: CGFloat) {
        
        addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: horizontalInset).isActive = true
        label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -horizontalInset).isActive = true
        label.topAnchor.constraint(equalTo: topAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    
    public override var intrinsicContentSize: CGSize {
        return label.intrinsicContentSize
    }
    
}
