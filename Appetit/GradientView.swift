//
//  GradientView.swift
//  Appetit
//
//  Created by Douglas Taquary on 16/01/17.
//  Copyright © 2017 Douglas Taquary. All rights reserved.
//

import Foundation
import UIKit

class GradientView: UIView {
    
    let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUp()
    }
    
    func setUp() {
        self.layer.addSublayer(self.gradientLayer)
        self.gradientLayer.backgroundColor = UIColor.clear.cgColor
    }
    
    open var colors: [UIColor]? {
        get {
            if let colors = self.gradientLayer.colors as? [CGColor] {
                return colors.map { UIColor(cgColor: $0) }
            }
            
            return nil
        }
        set {
            self.gradientLayer.colors = (newValue ?? []).map { $0.cgColor }
        }
    }
    
    open var locations: [Double]? {
        get {
            return self.gradientLayer.locations?.map { $0.doubleValue }
        }
        set {
            self.gradientLayer.locations = newValue?.map{ NSNumber(value: $0) }
        }
    }
    
    open var startPoint: CGPoint {
        get {
            return self.gradientLayer.startPoint
        }
        set {
            self.gradientLayer.startPoint = newValue
        }
    }
    
    open var endPoint: CGPoint {
        get {
            return self.gradientLayer.endPoint
        }
        set {
            self.gradientLayer.endPoint = newValue
        }
    }
    
    open var type: String {
        get {
            return self.gradientLayer.type
        }
        set {
            self.gradientLayer.type = newValue
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.gradientLayer.frame = self.bounds
    }
}
