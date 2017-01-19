//
//  UIImage+WithColor.swift
//  Appetit
//
//  Created by Douglas Taquary on 17/01/17.
//  Copyright © 2017 Douglas Taquary. All rights reserved.
//

import UIKit

extension UIImage {
    
    static func image(with color: UIColor) -> UIImage
    {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        let renderer = UIGraphicsImageRenderer(bounds: rect)
        
        let image = renderer.image { _ in
            color.setFill()
            UIRectFill(rect)
        }
        
        return image
    }
}
