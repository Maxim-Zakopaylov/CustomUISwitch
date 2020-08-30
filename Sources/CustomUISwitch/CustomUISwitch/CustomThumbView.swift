//
//  CustomThumbView.swift
//  CustomSwitch
//
//  Created by Aleksandar Atanackovic on 12/20/16.
//  Copyright © 2016 Ivan Kovacevic. All rights reserved.
//

import UIKit

public class CustomThumbView: UIView {
    
    fileprivate(set) var thumbOnImageView = UIImageView(frame: CGRect.zero)
	fileprivate(set) var thumbOffImageView = UIImageView(frame: CGRect.zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
		self.addSubview(self.thumbOffImageView)
        self.addSubview(self.thumbOnImageView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
		self.addSubview(self.thumbOffImageView)
        self.addSubview(self.thumbOnImageView)
        
    }
    
}

extension CustomThumbView {
    
	public override func layoutSubviews() {
        super.layoutSubviews()
        self.thumbOnImageView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        self.thumbOnImageView.layer.cornerRadius = self.layer.cornerRadius
        self.thumbOnImageView.clipsToBounds = self.clipsToBounds
		
		self.thumbOffImageView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)
        self.thumbOffImageView.layer.cornerRadius = self.layer.cornerRadius
        self.thumbOffImageView.clipsToBounds = self.clipsToBounds
    }
    
}
