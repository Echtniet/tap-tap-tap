//
//  WhiteBoardUIView.swift
//  tap tap tap
//
//  Created by Davelaar,Clinton B on 11/6/19.
//  Copyright © 2019 Davelaar,Clinton B. All rights reserved.
//

import UIKit

class WhiteBoardUIView: UIView {

    let delta:CGFloat = 5.0
    var radius:CGFloat = 0.0
    let colors:[UIColor] = [.purple, .blue, .green, .yellow, .red, .cyan, .magenta, .brown, .orange]
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        for i in 0 ..< TapArchive.shared.numPoints() {
            radius = CGFloat.random(in: 1 ... 25)
            let point = TapArchive.shared[i]
            let pathOrig = UIBezierPath(ovalIn: CGRect(x: point.x - radius, y: point.y - radius, width: radius * 2, height: radius * 2))
            //let path = UIBezierPath(ovalIn: CGRect(origin: point, size: CGSize(width: 5.0, height: 5.0)))
            colors[i % colors.count].setFill()
            pathOrig.fill()
            //path.fill()
        }
    }
    

}
